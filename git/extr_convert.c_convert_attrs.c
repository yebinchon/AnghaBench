
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct index_state {int dummy; } ;
struct conv_attrs {void* crlf_action; void* attr_action; int working_tree_encoding; int drv; int ident; } ;
struct attr_check_item {int dummy; } ;
typedef enum eol { ____Placeholder_eol } eol ;
struct TYPE_4__ {struct attr_check_item* items; } ;


 scalar_t__ AUTO_CRLF_FALSE ;
 scalar_t__ AUTO_CRLF_INPUT ;
 scalar_t__ AUTO_CRLF_TRUE ;
 void* CRLF_AUTO ;
 void* CRLF_AUTO_CRLF ;
 void* CRLF_AUTO_INPUT ;
 void* CRLF_BINARY ;
 void* CRLF_TEXT ;
 void* CRLF_TEXT_CRLF ;
 void* CRLF_TEXT_INPUT ;
 void* CRLF_UNDEFINED ;
 int EOL_CRLF ;
 int EOL_LF ;
 TYPE_1__* attr_check_initl (char*,char*,char*,char*,char*,char*,int *) ;
 scalar_t__ auto_crlf ;
 TYPE_1__* check ;
 int git_check_attr (struct index_state const*,char const*,TYPE_1__*) ;
 int git_config (int ,int *) ;
 int git_path_check_convert (struct attr_check_item*) ;
 void* git_path_check_crlf (struct attr_check_item*) ;
 int git_path_check_encoding (struct attr_check_item*) ;
 int git_path_check_eol (struct attr_check_item*) ;
 int git_path_check_ident (struct attr_check_item*) ;
 int read_convert_config ;
 scalar_t__ text_eol_is_crlf () ;
 int user_convert ;
 int * user_convert_tail ;

__attribute__((used)) static void convert_attrs(const struct index_state *istate,
     struct conv_attrs *ca, const char *path)
{
 struct attr_check_item *ccheck = ((void*)0);

 if (!check) {
  check = attr_check_initl("crlf", "ident", "filter",
      "eol", "text", "working-tree-encoding",
      ((void*)0));
  user_convert_tail = &user_convert;
  git_config(read_convert_config, ((void*)0));
 }

 git_check_attr(istate, path, check);
 ccheck = check->items;
 ca->crlf_action = git_path_check_crlf(ccheck + 4);
 if (ca->crlf_action == CRLF_UNDEFINED)
  ca->crlf_action = git_path_check_crlf(ccheck + 0);
 ca->ident = git_path_check_ident(ccheck + 1);
 ca->drv = git_path_check_convert(ccheck + 2);
 if (ca->crlf_action != CRLF_BINARY) {
  enum eol eol_attr = git_path_check_eol(ccheck + 3);
  if (ca->crlf_action == CRLF_AUTO && eol_attr == EOL_LF)
   ca->crlf_action = CRLF_AUTO_INPUT;
  else if (ca->crlf_action == CRLF_AUTO && eol_attr == EOL_CRLF)
   ca->crlf_action = CRLF_AUTO_CRLF;
  else if (eol_attr == EOL_LF)
   ca->crlf_action = CRLF_TEXT_INPUT;
  else if (eol_attr == EOL_CRLF)
   ca->crlf_action = CRLF_TEXT_CRLF;
 }
 ca->working_tree_encoding = git_path_check_encoding(ccheck + 5);


 ca->attr_action = ca->crlf_action;
 if (ca->crlf_action == CRLF_TEXT)
  ca->crlf_action = text_eol_is_crlf() ? CRLF_TEXT_CRLF : CRLF_TEXT_INPUT;
 if (ca->crlf_action == CRLF_UNDEFINED && auto_crlf == AUTO_CRLF_FALSE)
  ca->crlf_action = CRLF_BINARY;
 if (ca->crlf_action == CRLF_UNDEFINED && auto_crlf == AUTO_CRLF_TRUE)
  ca->crlf_action = CRLF_AUTO_CRLF;
 if (ca->crlf_action == CRLF_UNDEFINED && auto_crlf == AUTO_CRLF_INPUT)
  ca->crlf_action = CRLF_AUTO_INPUT;
}
