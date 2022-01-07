
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; int str; } ;


 TYPE_1__* elftypes ;
 size_t nitems (TYPE_1__*) ;
 scalar_t__ strcasecmp (char const*,int ) ;

__attribute__((used)) static int
elftype(const char *elfstrtype)
{
 size_t elfwalk;

 for (elfwalk = 0; elfwalk < nitems(elftypes); elfwalk++)
  if (strcasecmp(elfstrtype, elftypes[elfwalk].str) == 0)
   return (elftypes[elfwalk].value);
 return (-1);
}
