
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; char const* name; } ;


 char const** days ;
 TYPE_1__* ndays ;

__attribute__((used)) static const char *
getdayofweekname(int i)
{
 if (ndays[i].len != 0 && ndays[i].name != ((void*)0))
  return (ndays[i].name);
 return (days[i]);
}
