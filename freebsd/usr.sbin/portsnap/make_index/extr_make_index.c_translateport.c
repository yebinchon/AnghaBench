
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {size_t n_edep; size_t n_pdep; size_t n_fdep; size_t n_bdep; size_t n_rdep; int portdir; TYPE_5__* rdep; TYPE_4__* bdep; TYPE_3__* fdep; TYPE_2__* pdep; TYPE_1__* edep; } ;
struct TYPE_14__ {int name; void* p; } ;
struct TYPE_13__ {int name; void* p; } ;
struct TYPE_12__ {int name; void* p; } ;
struct TYPE_11__ {int name; void* p; } ;
struct TYPE_10__ {int name; void* p; } ;
typedef TYPE_6__ PORT ;


 void* findport (TYPE_6__**,int ,size_t,int ,int ) ;

__attribute__((used)) static void
translateport(PORT ** pp, size_t pplen, PORT * p)
{
 size_t i;

 for (i = 0; i < p->n_edep; i++)
  p->edep[i].p = findport(pp, 0, pplen, p->edep[i].name, p->portdir);
 for (i = 0; i < p->n_pdep; i++)
  p->pdep[i].p = findport(pp, 0, pplen, p->pdep[i].name, p->portdir);
 for (i = 0; i < p->n_fdep; i++)
  p->fdep[i].p = findport(pp, 0, pplen, p->fdep[i].name, p->portdir);
 for (i = 0; i < p->n_bdep; i++)
  p->bdep[i].p = findport(pp, 0, pplen, p->bdep[i].name, p->portdir);
 for (i = 0; i < p->n_rdep; i++)
  p->rdep[i].p = findport(pp, 0, pplen, p->rdep[i].name, p->portdir);
}
