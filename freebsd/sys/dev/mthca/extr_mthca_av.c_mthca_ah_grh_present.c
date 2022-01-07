
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_ah {TYPE_1__* av; } ;
struct TYPE_2__ {int g_slid; } ;



int mthca_ah_grh_present(struct mthca_ah *ah)
{
 return !!(ah->av->g_slid & 0x80);
}
