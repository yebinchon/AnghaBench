
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int channel; } ;
struct TYPE_4__ {int channel; } ;
struct csa_info {TYPE_3__ rch; TYPE_2__* binfo; TYPE_1__ pch; } ;
struct TYPE_5__ {int hisr; } ;


 int HISR_VC0 ;
 int HISR_VC1 ;
 int chn_intr (int ) ;

__attribute__((used)) static void
csa_intr(void *p)
{
 struct csa_info *csa = p;

 if ((csa->binfo->hisr & HISR_VC0) != 0)
  chn_intr(csa->pch.channel);
 if ((csa->binfo->hisr & HISR_VC1) != 0)
  chn_intr(csa->rch.channel);
}
