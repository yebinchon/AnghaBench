
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;
typedef int gid_t ;


 struct group* vnextgrent (int *,int ,int) ;

struct group *
vgetgrgid(gid_t gid)
{
  return vnextgrent(((void*)0), gid, 1);
}
