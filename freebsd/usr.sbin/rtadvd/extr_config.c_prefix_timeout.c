
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtadvd_timer {int dummy; } ;
struct prefix {int dummy; } ;


 int delete_prefix (struct prefix*) ;

__attribute__((used)) static struct rtadvd_timer *
prefix_timeout(void *arg)
{

 delete_prefix((struct prefix *)arg);

 return (((void*)0));
}
