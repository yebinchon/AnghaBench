
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mle_type; } ;
struct mac_lomac {int ml_flags; TYPE_1__ ml_single; } ;


 int KASSERT (int,char*) ;
 int MAC_LOMAC_FLAG_SINGLE ;
 scalar_t__ MAC_LOMAC_TYPE_HIGH ;

__attribute__((used)) static int
lomac_high_single(struct mac_lomac *ml)
{

 KASSERT((ml->ml_flags & MAC_LOMAC_FLAG_SINGLE) != 0,
     ("lomac_high_single: mac_lomac not single"));

 return (ml->ml_single.mle_type == MAC_LOMAC_TYPE_HIGH);
}
