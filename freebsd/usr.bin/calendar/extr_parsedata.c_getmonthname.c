
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; char const* name; } ;


 char const** months ;
 TYPE_1__* nmonths ;

__attribute__((used)) static const char *
getmonthname(int i)
{
 if (i <= 0 || i > 12)
  return ("");
 if (nmonths[i - 1].len != 0 && nmonths[i - 1].name != ((void*)0))
  return (nmonths[i - 1].name);
 return (months[i - 1]);
}
