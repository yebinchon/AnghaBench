
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t MBaseIO; } ;
struct TYPE_7__ {int ** bus_ctlp; int ** io_rid; int ** io; int dev; } ;
typedef TYPE_1__ CONTROLLER_t ;


 TYPE_5__* ISACTL (TYPE_1__*) ;
 int MAX_AIOPS_PER_BOARD ;
 int M_DEVBUF ;
 int SYS_RES_IOPORT ;
 int bus_release_resource (int ,int ,int *,int *) ;
 int free (int **,int ) ;
 TYPE_1__* rp_controller ;
 int rp_releaseresource (TYPE_1__*) ;

__attribute__((used)) static void
rp_isareleaseresource(CONTROLLER_t *ctlp)
{
 int i;

 rp_releaseresource(ctlp);

 if (ctlp == rp_controller)
  rp_controller = ((void*)0);
 if (ctlp->io != ((void*)0)) {
  for (i = 0 ; i < MAX_AIOPS_PER_BOARD ; i++)
   if (ctlp->io[i] != ((void*)0))
    bus_release_resource(ctlp->dev, SYS_RES_IOPORT, ctlp->io_rid[i], ctlp->io[i]);
  free(ctlp->io, M_DEVBUF);
 }
 if (ctlp->io_rid != ((void*)0))
  free(ctlp->io_rid, M_DEVBUF);
 if (rp_controller != ((void*)0) && rp_controller->io[ISACTL(ctlp)->MBaseIO] != ((void*)0)) {
  bus_release_resource(rp_controller->dev, SYS_RES_IOPORT, rp_controller->io_rid[ISACTL(ctlp)->MBaseIO], rp_controller->io[ISACTL(ctlp)->MBaseIO]);
  rp_controller->io[ISACTL(ctlp)->MBaseIO] = ((void*)0);
  rp_controller->io_rid[ISACTL(ctlp)->MBaseIO] = 0;
 }
 if (ctlp->bus_ctlp != ((void*)0))
  free(ctlp->bus_ctlp, M_DEVBUF);
}
