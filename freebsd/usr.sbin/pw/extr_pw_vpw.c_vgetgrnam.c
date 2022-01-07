
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;


 struct group* vnextgrent (char const*,int,int) ;

struct group *
vgetgrnam(const char * nam)
{
  return vnextgrent(nam, -1, 1);
}
