
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_pcminfo {int chnum; struct sc_chinfo* chan; } ;
struct sc_info {int dev; } ;
struct sc_chinfo {scalar_t__ run; } ;
typedef int device_t ;


 int M_TEMP ;
 int device_get_children (int ,int **,int*) ;
 struct sc_pcminfo* device_get_ivars (int ) ;
 int device_printf (int ,char*) ;
 int free (int *,int ) ;

__attribute__((used)) static int
hdspe_running(struct sc_info *sc)
{
 struct sc_pcminfo *scp;
 struct sc_chinfo *ch;
 device_t *devlist;
 int devcount;
 int i, j;
 int err;

 if ((err = device_get_children(sc->dev, &devlist, &devcount)) != 0)
  goto bad;

 for (i = 0; i < devcount; i++) {
  scp = device_get_ivars(devlist[i]);
  for (j = 0; j < scp->chnum; j++) {
   ch = &scp->chan[j];
   if (ch->run)
    goto bad;
  }
 }

 free(devlist, M_TEMP);

 return (0);
bad:





 free(devlist, M_TEMP);

 return (1);
}
