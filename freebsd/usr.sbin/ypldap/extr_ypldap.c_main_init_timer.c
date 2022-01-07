
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env {int dummy; } ;


 int main_configure_client (struct env*) ;

void
main_init_timer(int fd, short event, void *p)
{
 struct env *env = p;

 main_configure_client(env);
}
