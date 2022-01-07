
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int ;
struct TYPE_3__ {int channel; } ;
struct agg_info {scalar_t__ curpwr; int playchns; int active; int dev; TYPE_1__ rch; TYPE_2__* pch; } ;
struct TYPE_4__ {int channel; } ;


 int AGG_RD (struct agg_info*,int ,int) ;
 int AGG_WR (struct agg_info*,int ,int,int) ;
 int HOSTINT_STAT_DSOUND ;
 int HOSTINT_STAT_HWVOL ;

 int HWVOL_MUTE ;


 scalar_t__ PCI_POWERSTATE_D1 ;
 int PORT_HOSTINT_STAT ;
 int PORT_HWVOL_MASTER ;
 int PORT_INT_STAT ;
 int agg_lock (struct agg_info*) ;
 int agg_unlock (struct agg_info*) ;
 int chn_intr (int ) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*,int ,int) ;
 int mixer_hwvol_mute (int ) ;
 int mixer_hwvol_step (int ,int,int) ;
 int suppress_jitter (TYPE_2__*) ;
 int suppress_rec_jitter (TYPE_1__*) ;

__attribute__((used)) static void
agg_intr(void *sc)
{
 struct agg_info* ess = sc;
 register u_int8_t status;
 int i;
 u_int m;

 status = AGG_RD(ess, PORT_HOSTINT_STAT, 1);
 if (!status)
  return;


 AGG_WR(ess, PORT_HOSTINT_STAT, status, 1);

 if (status & HOSTINT_STAT_DSOUND) {



  if (ess->curpwr <= PCI_POWERSTATE_D1) {
   AGG_WR(ess, PORT_INT_STAT, 1, 2);
   for (i = 0, m = 1; i < ess->playchns; i++, m <<= 1) {
    if (ess->active & m) {
     if (ess->curpwr <= PCI_POWERSTATE_D1)
      chn_intr(ess->pch[i].channel);
     else {
      m = 0;
      break;
     }
    }
   }
   if ((ess->active & m)
       && ess->curpwr <= PCI_POWERSTATE_D1)
    chn_intr(ess->rch.channel);
  }




 }

 if (status & HOSTINT_STAT_HWVOL) {
  register u_int8_t event;

  agg_lock(ess);
  event = AGG_RD(ess, PORT_HWVOL_MASTER, 1);
  AGG_WR(ess, PORT_HWVOL_MASTER, 129, 1);
  agg_unlock(ess);

  switch (event) {
  case 128:
   mixer_hwvol_step(ess->dev, 1, 1);
   break;
  case 130:
   mixer_hwvol_step(ess->dev, -1, -1);
   break;
  case 129:
   break;
  default:
   if (event & HWVOL_MUTE) {
    mixer_hwvol_mute(ess->dev);
    break;
   }
   device_printf(ess->dev,
          "%s: unknown HWVOL event 0x%x\n",
          device_get_nameunit(ess->dev), event);
  }
 }
}
