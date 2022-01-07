
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct menu_stuff {int nr; } ;
struct menu_opts {int flags; scalar_t__ prompt; scalar_t__ header; } ;


 int ALLOC_ARRAY (int*,int) ;
 int CLEAN_COLOR_HEADER ;
 int CLEAN_COLOR_PROMPT ;
 int CLEAN_COLOR_RESET ;
 int EOF ;
 int MENU_OPTS_IMMEDIATE ;
 int MENU_OPTS_LIST_ONLY ;
 int MENU_OPTS_SINGLETON ;
 struct strbuf STRBUF_INIT ;
 char* _ (scalar_t__) ;
 char* clean_get_color (int ) ;
 int free (int*) ;
 int parse_choice (struct menu_stuff*,int,struct strbuf,int**) ;
 int print_highlight_menu_stuff (struct menu_stuff*,int**) ;
 int printf (char*,char*,char*,char*,char*) ;
 int printf_ln (char*,char*,char*,char*) ;
 int prompt_help_cmd (int) ;
 int st_add (int,int) ;
 int stdin ;
 int strbuf_getline_lf (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_trim (struct strbuf*) ;
 int strcmp (int ,char*) ;
 int* xcalloc (int ,int) ;
 int* xmalloc (int) ;

__attribute__((used)) static int *list_and_choose(struct menu_opts *opts, struct menu_stuff *stuff)
{
 struct strbuf choice = STRBUF_INIT;
 int *chosen, *result;
 int nr = 0;
 int eof = 0;
 int i;

 ALLOC_ARRAY(chosen, stuff->nr);

 for (i = 0; i < stuff->nr; i++)
  chosen[i] = -1;

 for (;;) {
  if (opts->header) {
   printf_ln("%s%s%s",
      clean_get_color(CLEAN_COLOR_HEADER),
      _(opts->header),
      clean_get_color(CLEAN_COLOR_RESET));
  }


  print_highlight_menu_stuff(stuff, &chosen);

  if (opts->flags & MENU_OPTS_LIST_ONLY)
   break;

  if (opts->prompt) {
   printf("%s%s%s%s",
          clean_get_color(CLEAN_COLOR_PROMPT),
          _(opts->prompt),
          opts->flags & MENU_OPTS_SINGLETON ? "> " : ">> ",
          clean_get_color(CLEAN_COLOR_RESET));
  }

  if (strbuf_getline_lf(&choice, stdin) != EOF) {
   strbuf_trim(&choice);
  } else {
   eof = 1;
   break;
  }


  if (!strcmp(choice.buf, "?")) {
   prompt_help_cmd(opts->flags & MENU_OPTS_SINGLETON);
   continue;
  }


  if (!(opts->flags & MENU_OPTS_SINGLETON) && !choice.len)
   break;

  nr = parse_choice(stuff,
      opts->flags & MENU_OPTS_SINGLETON,
      choice,
      &chosen);

  if (opts->flags & MENU_OPTS_SINGLETON) {
   if (nr)
    break;
  } else if (opts->flags & MENU_OPTS_IMMEDIATE) {
   break;
  }
 }

 if (eof) {
  result = xmalloc(sizeof(int));
  *result = EOF;
 } else {
  int j = 0;





  if (!nr) {
   for (i = 0; i < stuff->nr; i++)
    nr += chosen[i];
  }

  result = xcalloc(st_add(nr, 1), sizeof(int));
  for (i = 0; i < stuff->nr && j < nr; i++) {
   if (chosen[i])
    result[j++] = i;
  }
  result[j] = EOF;
 }

 free(chosen);
 strbuf_release(&choice);
 return result;
}
