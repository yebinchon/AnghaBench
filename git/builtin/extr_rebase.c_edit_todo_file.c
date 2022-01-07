
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct todo_list {int buf; } ;


 struct todo_list TODO_LIST_INIT ;
 unsigned int TODO_LIST_SHORTEN_IDS ;
 int _ (char*) ;
 int edit_todo_list (int ,struct todo_list*,struct todo_list*,int *,int *,unsigned int) ;
 int error_errno (int ,char const*) ;
 char* rebase_path_todo () ;
 scalar_t__ strbuf_read_file (int *,char const*,int ) ;
 int strbuf_stripspace (int *,int) ;
 int the_repository ;
 int todo_list_release (struct todo_list*) ;
 scalar_t__ todo_list_write_to_file (int ,struct todo_list*,char const*,int *,int *,int,unsigned int) ;

__attribute__((used)) static int edit_todo_file(unsigned flags)
{
 const char *todo_file = rebase_path_todo();
 struct todo_list todo_list = TODO_LIST_INIT,
  new_todo = TODO_LIST_INIT;
 int res = 0;

 if (strbuf_read_file(&todo_list.buf, todo_file, 0) < 0)
  return error_errno(_("could not read '%s'."), todo_file);

 strbuf_stripspace(&todo_list.buf, 1);
 res = edit_todo_list(the_repository, &todo_list, &new_todo, ((void*)0), ((void*)0), flags);
 if (!res && todo_list_write_to_file(the_repository, &new_todo, todo_file,
         ((void*)0), ((void*)0), -1, flags & ~(TODO_LIST_SHORTEN_IDS)))
  res = error_errno(_("could not write '%s'"), todo_file);

 todo_list_release(&todo_list);
 todo_list_release(&new_todo);

 return res;
}
