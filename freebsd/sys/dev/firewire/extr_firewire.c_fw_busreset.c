
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct firewire_dev_comm {int (* post_busreset ) (struct firewire_dev_comm*) ;} ;
struct firewire_comm {scalar_t__ status; int config_rom; TYPE_1__* crom_src_buf; int bdev; int bmr_callout; } ;
struct TYPE_4__ {scalar_t__ generation; } ;
struct crom_src {TYPE_2__ businfo; } ;
typedef scalar_t__ device_t ;
struct TYPE_3__ {struct crom_src src; } ;


 int CROMSIZE ;
 scalar_t__ DS_ATTACHED ;
 scalar_t__ FWBUSMGRELECT ;
 scalar_t__ FWBUSNOTREADY ;
 scalar_t__ FW_GENERATION_CHANGEABLE ;
 int FW_GLOCK_ASSERT (struct firewire_comm*) ;
 int M_FW ;
 int M_NOWAIT ;
 int M_TEMP ;
 int M_ZERO ;
 scalar_t__ bcmp (scalar_t__*,int ,int ) ;
 int bcopy (scalar_t__*,int ,int ) ;
 int callout_stop (int *) ;
 int crom_load (struct crom_src*,scalar_t__*,int ) ;
 scalar_t__ device_get_children (int ,scalar_t__**,int*) ;
 struct firewire_dev_comm* device_get_softc (scalar_t__) ;
 scalar_t__ device_get_state (scalar_t__) ;
 int free (scalar_t__*,int ) ;
 int fw_init_crom (struct firewire_comm*) ;
 int fw_reset_crom (struct firewire_comm*) ;
 int fw_reset_csr (struct firewire_comm*) ;
 scalar_t__* malloc (int ,int ,int) ;
 int stub1 (struct firewire_dev_comm*) ;

void
fw_busreset(struct firewire_comm *fc, uint32_t new_status)
{
 struct firewire_dev_comm *fdc;
 struct crom_src *src;
 device_t *devlistp;
 uint32_t *newrom;
 int i, devcnt;

 FW_GLOCK_ASSERT(fc);
 if (fc->status == FWBUSMGRELECT)
  callout_stop(&fc->bmr_callout);

 fc->status = new_status;
 fw_reset_csr(fc);

 if (fc->status == FWBUSNOTREADY)
  fw_init_crom(fc);

 fw_reset_crom(fc);

 if (device_get_children(fc->bdev, &devlistp, &devcnt) == 0) {
  for (i = 0; i < devcnt; i++)
   if (device_get_state(devlistp[i]) >= DS_ATTACHED) {
    fdc = device_get_softc(devlistp[i]);
    if (fdc->post_busreset != ((void*)0))
     fdc->post_busreset(fdc);
   }
  free(devlistp, M_TEMP);
 }

 src = &fc->crom_src_buf->src;
 newrom = malloc(CROMSIZE, M_FW, M_NOWAIT | M_ZERO);
 src = &fc->crom_src_buf->src;
 crom_load(src, newrom, CROMSIZE);
 if (bcmp(newrom, fc->config_rom, CROMSIZE) != 0) {

  src->businfo.generation++;


  if (src->businfo.generation < FW_GENERATION_CHANGEABLE)
   src->businfo.generation = FW_GENERATION_CHANGEABLE;


  crom_load(src, newrom, CROMSIZE);
  bcopy(newrom, fc->config_rom, CROMSIZE);
 }
 free(newrom, M_FW);
}
