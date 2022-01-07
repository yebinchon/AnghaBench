
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int dummy; } ;


 int finish_command (struct child_process*) ;
 int free (struct child_process*) ;
 scalar_t__ git_connection_is_socket (struct child_process*) ;

int finish_connect(struct child_process *conn)
{
 int code;
 if (!conn || git_connection_is_socket(conn))
  return 0;

 code = finish_command(conn);
 free(conn);
 return code;
}
