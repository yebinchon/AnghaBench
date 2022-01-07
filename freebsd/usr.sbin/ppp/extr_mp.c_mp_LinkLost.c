
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ min_in; } ;
struct mp {TYPE_1__ seq; } ;
struct TYPE_4__ {scalar_t__ seq; } ;
struct datalink {TYPE_2__ mp; } ;


 int mp_Assemble (struct mp*,int *,int *) ;

void
mp_LinkLost(struct mp *mp, struct datalink *dl)
{
  if (mp->seq.min_in == dl->mp.seq)

    mp_Assemble(mp, ((void*)0), ((void*)0));
}
