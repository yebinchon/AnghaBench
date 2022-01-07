
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int len; } ;
struct parse_event_data {struct config_options const* member_2; int member_1; int member_0; } ;
struct config_options {int error_action; } ;
typedef int config_fn_t ;
struct TYPE_2__ {int origin_type; int default_error_action; int name; int linenr; scalar_t__ eof; struct strbuf var; } ;


 int BUG (char*) ;




 int CONFIG_EVENT_COMMENT ;
 int CONFIG_EVENT_ENTRY ;
 int CONFIG_EVENT_EOF ;
 int CONFIG_EVENT_ERROR ;
 int CONFIG_EVENT_SECTION ;
 int CONFIG_EVENT_WHITESPACE ;





 int _ (char*) ;
 TYPE_1__* cf ;
 int die (char*,char*) ;
 scalar_t__ do_event (int ,struct parse_event_data*) ;
 int error (char*,char*) ;
 int free (char*) ;
 scalar_t__ get_base_var (struct strbuf*) ;
 int get_next_char () ;
 scalar_t__ get_value (int ,void*,struct strbuf*) ;
 int isalpha (int) ;
 scalar_t__ isspace (int) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_reset (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,int) ;
 char tolower (int) ;
 char const* utf8_bom ;
 char* xstrfmt (int ,int ,...) ;

__attribute__((used)) static int git_parse_source(config_fn_t fn, void *data,
       const struct config_options *opts)
{
 int comment = 0;
 int baselen = 0;
 struct strbuf *var = &cf->var;
 int error_return = 0;
 char *error_msg = ((void*)0);


 const char *bomptr = utf8_bom;


 struct parse_event_data event_data = {
  CONFIG_EVENT_EOF, 0, opts
 };

 for (;;) {
  int c;

  c = get_next_char();
  if (bomptr && *bomptr) {



   if (c == (*bomptr & 0377)) {
    bomptr++;
    continue;
   } else {

    if (bomptr != utf8_bom)
     break;

    bomptr = ((void*)0);
   }
  }
  if (c == '\n') {
   if (cf->eof) {
    if (do_event(CONFIG_EVENT_EOF, &event_data) < 0)
     return -1;
    return 0;
   }
   if (do_event(CONFIG_EVENT_WHITESPACE, &event_data) < 0)
    return -1;
   comment = 0;
   continue;
  }
  if (comment)
   continue;
  if (isspace(c)) {
   if (do_event(CONFIG_EVENT_WHITESPACE, &event_data) < 0)
     return -1;
   continue;
  }
  if (c == '#' || c == ';') {
   if (do_event(CONFIG_EVENT_COMMENT, &event_data) < 0)
     return -1;
   comment = 1;
   continue;
  }
  if (c == '[') {
   if (do_event(CONFIG_EVENT_SECTION, &event_data) < 0)
     return -1;


   strbuf_reset(var);
   if (get_base_var(var) < 0 || var->len < 1)
    break;
   strbuf_addch(var, '.');
   baselen = var->len;
   continue;
  }
  if (!isalpha(c))
   break;

  if (do_event(CONFIG_EVENT_ENTRY, &event_data) < 0)
   return -1;






  strbuf_setlen(var, baselen);
  strbuf_addch(var, tolower(c));
  if (get_value(fn, data, var) < 0)
   break;
 }

 if (do_event(CONFIG_EVENT_ERROR, &event_data) < 0)
  return -1;

 switch (cf->origin_type) {
 case 132:
  error_msg = xstrfmt(_("bad config line %d in blob %s"),
          cf->linenr, cf->name);
  break;
 case 130:
  error_msg = xstrfmt(_("bad config line %d in file %s"),
          cf->linenr, cf->name);
  break;
 case 129:
  error_msg = xstrfmt(_("bad config line %d in standard input"),
          cf->linenr);
  break;
 case 128:
  error_msg = xstrfmt(_("bad config line %d in submodule-blob %s"),
           cf->linenr, cf->name);
  break;
 case 131:
  error_msg = xstrfmt(_("bad config line %d in command line %s"),
           cf->linenr, cf->name);
  break;
 default:
  error_msg = xstrfmt(_("bad config line %d in %s"),
          cf->linenr, cf->name);
 }

 switch (opts && opts->error_action ?
  opts->error_action :
  cf->default_error_action) {
 case 136:
  die("%s", error_msg);
  break;
 case 135:
  error_return = error("%s", error_msg);
  break;
 case 134:
  error_return = -1;
  break;
 case 133:
  BUG("config error action unset");
 }

 free(error_msg);
 return error_return;
}
