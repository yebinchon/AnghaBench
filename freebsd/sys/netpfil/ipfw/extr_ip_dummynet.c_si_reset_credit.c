
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dn_sch_inst {scalar_t__ credit; TYPE_1__* sched; } ;
struct dn_link {int bandwidth; scalar_t__ burst; } ;
struct TYPE_4__ {scalar_t__ io_fast; } ;
struct TYPE_3__ {struct dn_link link; } ;


 TYPE_2__ dn_cfg ;

__attribute__((used)) static int
si_reset_credit(void *_si, void *arg)
{
 struct dn_sch_inst *si = _si;
 struct dn_link *p = &si->sched->link;

 si->credit = p->burst + (dn_cfg.io_fast ? p->bandwidth : 0);
 return 0;
}
