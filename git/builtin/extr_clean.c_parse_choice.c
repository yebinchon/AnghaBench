
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; int len; } ;
struct menu_stuff {int nr; } ;


 int CLEAN_COLOR_ERROR ;
 int CLEAN_COLOR_RESET ;
 char* _ (char*) ;
 int atoi (char*) ;
 int clean_print_color (int ) ;
 int find_unique (char*,struct menu_stuff*) ;
 int isdigit (char) ;
 int printf (char*,char*) ;
 int strbuf_list_free (struct strbuf**) ;
 int strbuf_remove (struct strbuf*,int ,int) ;
 struct strbuf** strbuf_split_max (struct strbuf*,char,int ) ;
 int strbuf_trim (struct strbuf*) ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int parse_choice(struct menu_stuff *menu_stuff,
   int is_single,
   struct strbuf input,
   int **chosen)
{
 struct strbuf **choice_list, **ptr;
 int nr = 0;
 int i;

 if (is_single) {
  choice_list = strbuf_split_max(&input, '\n', 0);
 } else {
  char *p = input.buf;
  do {
   if (*p == ',')
    *p = ' ';
  } while (*p++);
  choice_list = strbuf_split_max(&input, ' ', 0);
 }

 for (ptr = choice_list; *ptr; ptr++) {
  char *p;
  int choose = 1;
  int bottom = 0, top = 0;
  int is_range, is_number;

  strbuf_trim(*ptr);
  if (!(*ptr)->len)
   continue;


  if (*(*ptr)->buf == '-') {
   choose = 0;
   strbuf_remove((*ptr), 0, 1);
  }

  is_range = 0;
  is_number = 1;
  for (p = (*ptr)->buf; *p; p++) {
   if ('-' == *p) {
    if (!is_range) {
     is_range = 1;
     is_number = 0;
    } else {
     is_number = 0;
     is_range = 0;
     break;
    }
   } else if (!isdigit(*p)) {
    is_number = 0;
    is_range = 0;
    break;
   }
  }

  if (is_number) {
   bottom = atoi((*ptr)->buf);
   top = bottom;
  } else if (is_range) {
   bottom = atoi((*ptr)->buf);

   if (!*(strchr((*ptr)->buf, '-') + 1))
    top = menu_stuff->nr;
   else
    top = atoi(strchr((*ptr)->buf, '-') + 1);
  } else if (!strcmp((*ptr)->buf, "*")) {
   bottom = 1;
   top = menu_stuff->nr;
  } else {
   bottom = find_unique((*ptr)->buf, menu_stuff);
   top = bottom;
  }

  if (top <= 0 || bottom <= 0 || top > menu_stuff->nr || bottom > top ||
      (is_single && bottom != top)) {
   clean_print_color(CLEAN_COLOR_ERROR);
   printf(_("Huh (%s)?\n"), (*ptr)->buf);
   clean_print_color(CLEAN_COLOR_RESET);
   continue;
  }

  for (i = bottom; i <= top; i++)
   (*chosen)[i-1] = choose;
 }

 strbuf_list_free(choice_list);

 for (i = 0; i < menu_stuff->nr; i++)
  nr += (*chosen)[i];
 return nr;
}
