
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int bit; int name; } ;


 TYPE_1__* flags ;
 int nitems (TYPE_1__*) ;
 scalar_t__ strncasecmp (int ,char const*,int) ;

__attribute__((used)) static uint64_t
getflag(const char *name, int len)
{
 int i;

 for (i = 0; i < nitems(flags); i++)
  if (strncasecmp(flags[i].name, name, len) == 0)
   return flags[i].bit;
 return 0;
}
