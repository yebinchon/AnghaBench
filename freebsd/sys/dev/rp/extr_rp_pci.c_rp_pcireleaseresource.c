
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ** io; int ** io_rid; int dev; } ;
typedef TYPE_1__ CONTROLLER_t ;


 int M_DEVBUF ;
 int SYS_RES_IOPORT ;
 int bus_release_resource (int ,int ,int *,int *) ;
 int free (int **,int ) ;
 int rp_releaseresource (TYPE_1__*) ;

__attribute__((used)) static void
rp_pcireleaseresource(CONTROLLER_t *ctlp)
{
 rp_releaseresource(ctlp);
 if (ctlp->io != ((void*)0)) {
  if (ctlp->io[0] != ((void*)0))
   bus_release_resource(ctlp->dev, SYS_RES_IOPORT, ctlp->io_rid[0], ctlp->io[0]);
  free(ctlp->io, M_DEVBUF);
  ctlp->io = ((void*)0);
 }
 if (ctlp->io_rid != ((void*)0)) {
  free(ctlp->io_rid, M_DEVBUF);
  ctlp->io = ((void*)0);
 }
}
