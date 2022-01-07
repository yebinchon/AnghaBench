
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;
struct todo_list {TYPE_1__ buf; } ;


 struct todo_list TODO_LIST_INIT ;
 int _ (char*) ;
 int error (int ,char const*) ;
 int error_errno (int ,char const*) ;
 char* rebase_path_todo () ;
 scalar_t__ strbuf_read_file (TYPE_1__*,char const*,int ) ;
 int the_repository ;
 scalar_t__ todo_list_parse_insn_buffer (int ,int ,struct todo_list*) ;
 int todo_list_release (struct todo_list*) ;
 int todo_list_write_to_file (int ,struct todo_list*,char const*,int *,int *,int,unsigned int) ;

__attribute__((used)) static int transform_todo_file(unsigned flags)
{
 const char *todo_file = rebase_path_todo();
 struct todo_list todo_list = TODO_LIST_INIT;
 int res;

 if (strbuf_read_file(&todo_list.buf, todo_file, 0) < 0)
  return error_errno(_("could not read '%s'."), todo_file);

 if (todo_list_parse_insn_buffer(the_repository, todo_list.buf.buf,
     &todo_list)) {
  todo_list_release(&todo_list);
  return error(_("unusable todo list: '%s'"), todo_file);
 }

 res = todo_list_write_to_file(the_repository, &todo_list, todo_file,
          ((void*)0), ((void*)0), -1, flags);
 todo_list_release(&todo_list);

 if (res)
  return error_errno(_("could not write '%s'."), todo_file);
 return 0;
}
