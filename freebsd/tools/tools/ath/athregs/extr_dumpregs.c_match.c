
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dumpreg {int type; } ;
struct TYPE_3__ {int ah_phyRev; int ah_macRev; int ah_macVersion; } ;
typedef TYPE_1__ HAL_REVS ;


 int DUMP_BASEBAND ;
 int MAC_MATCH (struct dumpreg const*,int ,int ) ;
 int PHY_MATCH (struct dumpreg const*,int ) ;

__attribute__((used)) static __inline int
match(const struct dumpreg *dr, const HAL_REVS *revs)
{
 if (!MAC_MATCH(dr, revs->ah_macVersion, revs->ah_macRev))
  return 0;
 if ((dr->type & DUMP_BASEBAND) && !PHY_MATCH(dr, revs->ah_phyRev))
  return 0;
 return 1;
}
