
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {int buf; } ;
struct TYPE_2__ {int string; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ advice_rm_hints ;
 int error (char*,int ) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void print_error_files(struct string_list *files_list,
         const char *main_msg,
         const char *hints_msg,
         int *errs)
{
 if (files_list->nr) {
  int i;
  struct strbuf err_msg = STRBUF_INIT;

  strbuf_addstr(&err_msg, main_msg);
  for (i = 0; i < files_list->nr; i++)
   strbuf_addf(&err_msg,
        "\n    %s",
        files_list->items[i].string);
  if (advice_rm_hints)
   strbuf_addstr(&err_msg, hints_msg);
  *errs = error("%s", err_msg.buf);
  strbuf_release(&err_msg);
 }
}
