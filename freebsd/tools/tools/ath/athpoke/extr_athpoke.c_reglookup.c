
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dumpreg {int name; } ;
struct TYPE_3__ {int ah_macRev; int ah_macVersion; } ;
struct TYPE_4__ {int nregs; struct dumpreg** regs; TYPE_1__ revs; } ;
typedef TYPE_1__ HAL_REVS ;


 scalar_t__ MAC_MATCH (struct dumpreg const*,int ,int ) ;
 TYPE_2__ state ;
 scalar_t__ strcasecmp (char const*,int ) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

__attribute__((used)) static const struct dumpreg *
reglookup(const char *v)
{
 const HAL_REVS *revs = &state.revs;
 int i;

 if (strncasecmp(v, "AR_", 3) == 0)
  v += 3;
 for (i = 0; i < state.nregs; i++) {
  const struct dumpreg *dr = state.regs[i];
  if (MAC_MATCH(dr, revs->ah_macVersion, revs->ah_macRev) &&
      strcasecmp(v, dr->name) == 0)
   return dr;
 }
 return ((void*)0);
}
