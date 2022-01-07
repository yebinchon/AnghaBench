
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mps_command {int cm_sglsize; void* cm_sge; TYPE_1__* cm_sc; } ;
struct TYPE_2__ {scalar_t__ reqframesz; } ;


 int KASSERT (int,char*) ;

void
mpi_init_sge(struct mps_command *cm, void *req, void *sge)
{
 int off, space;

 space = (int)cm->cm_sc->reqframesz;
 off = (uintptr_t)sge - (uintptr_t)req;

 KASSERT(off < space, ("bad pointers %p %p, off %d, space %d",
            req, sge, off, space));

 cm->cm_sge = sge;
 cm->cm_sglsize = space - off;
}
