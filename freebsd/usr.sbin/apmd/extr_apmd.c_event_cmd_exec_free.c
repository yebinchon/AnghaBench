
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_cmd_exec {int line; } ;


 int free (int ) ;

void
event_cmd_exec_free(void *this)
{
 free(((struct event_cmd_exec *)this)->line);
}
