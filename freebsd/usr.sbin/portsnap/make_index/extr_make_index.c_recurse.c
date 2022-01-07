
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int recursed; int n_rdep; void* rdep; int n_bdep; void* bdep; int n_fdep; void* fdep; int n_pdep; void* pdep; int n_edep; void* edep; int pkgname; } ;
typedef TYPE_1__ PORT ;


 int errx (int,char*,int ) ;
 void* recurse_one (void*,int *) ;

__attribute__((used)) static void
recurse(PORT * p)
{
 switch (p->recursed) {
 case 0:

  p->recursed = 1;
  break;
 case 1:

  errx(1, "Circular dependency loop found: %s"
      " depends upon itself.\n", p->pkgname);
 case 2:

  return;
 }

 p->edep = recurse_one(p->edep, &p->n_edep);
 p->pdep = recurse_one(p->pdep, &p->n_pdep);
 p->fdep = recurse_one(p->fdep, &p->n_fdep);
 p->bdep = recurse_one(p->bdep, &p->n_bdep);
 p->rdep = recurse_one(p->rdep, &p->n_rdep);


 p->recursed = 2;
}
