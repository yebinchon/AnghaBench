
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_ctx_list {int dummy; } ;


 int EINVAL ;
 int TAILQ_INIT (struct sysctl_ctx_list*) ;

int
sysctl_ctx_init(struct sysctl_ctx_list *c)
{

 if (c == ((void*)0)) {
  return (EINVAL);
 }






 TAILQ_INIT(c);
 return (0);
}
