
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;


 struct group* vnextgrent (int *,int,int ) ;

struct group *
vgetgrent(void)
{
  return vnextgrent(((void*)0), -1, 0);
}
