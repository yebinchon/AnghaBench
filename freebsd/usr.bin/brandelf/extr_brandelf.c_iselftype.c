
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; char const* str; } ;


 TYPE_1__* elftypes ;
 size_t nitems (TYPE_1__*) ;

__attribute__((used)) static const char *
iselftype(int etype)
{
 size_t elfwalk;

 for (elfwalk = 0; elfwalk < nitems(elftypes); elfwalk++)
  if (etype == elftypes[elfwalk].value)
   return (elftypes[elfwalk].str);
 return (0);
}
