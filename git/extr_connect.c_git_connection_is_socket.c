
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int dummy; } ;


 struct child_process no_fork ;

int git_connection_is_socket(struct child_process *conn)
{
 return conn == &no_fork;
}
