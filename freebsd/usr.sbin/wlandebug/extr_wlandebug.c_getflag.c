
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int bit; int name; } ;


 int N (TYPE_1__*) ;
 TYPE_1__* flags ;
 scalar_t__ strncasecmp (int ,char const*,int) ;

__attribute__((used)) static u_int
getflag(const char *name, int len)
{
 int i;

 for (i = 0; i < N(flags); i++)
  if (strncasecmp(flags[i].name, name, len) == 0)
   return flags[i].bit;
 return 0;
}
