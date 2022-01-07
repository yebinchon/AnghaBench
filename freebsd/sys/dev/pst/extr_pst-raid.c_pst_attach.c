
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pst_softc {TYPE_2__* iop; struct i2o_bsa_device* info; TYPE_3__* disk; int queue; TYPE_1__* lct; } ;
struct i2o_get_param_reply {scalar_t__ result; } ;
struct i2o_device_identity {char* vendor; char* product; char* description; char* revision; } ;
struct i2o_bsa_device {int capacity; int block_size; } ;
typedef int int8_t ;
typedef int device_t ;
struct TYPE_7__ {char* d_name; int d_maxsize; int d_unit; int d_mediasize; int d_fwsectors; int d_fwheads; int d_sectorsize; struct pst_softc* d_drv1; int d_strategy; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int local_tid; } ;


 int DISK_VERSION ;
 int ENODEV ;
 int ENOMEM ;
 int EVENTHANDLER_REGISTER (int ,int ,int ,int ) ;
 int I2O_BSA_DEVICE_INFO_GROUP_NO ;
 int I2O_PARAMS_OPERATION_FIELD_GET ;
 int I2O_UTIL_DEVICE_IDENTITY_GROUP_NO ;
 int M_NOWAIT ;
 int M_PSTIOP ;
 int M_PSTRAID ;
 int PAGE_SIZE ;
 int SHUTDOWN_PRI_FIRST ;
 int bcopy (scalar_t__,struct i2o_bsa_device*,int) ;
 int bioq_init (int *) ;
 int bpack (char*,char*,int) ;
 int contigfree (struct i2o_get_param_reply*,int ,int ) ;
 int device_get_nameunit (int ) ;
 struct pst_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 TYPE_3__* disk_alloc () ;
 int disk_create (TYPE_3__*,int ) ;
 struct i2o_get_param_reply* iop_get_util_params (TYPE_2__*,int ,int ,int ) ;
 scalar_t__ malloc (int,int ,int ) ;
 int printf (char*,...) ;
 int pst_shutdown ;
 int pststrategy ;
 int shutdown_post_sync ;
 int sprintf (int *,char*,char*,char*) ;

__attribute__((used)) static int
pst_attach(device_t dev)
{
    struct pst_softc *psc = device_get_softc(dev);
    struct i2o_get_param_reply *reply;
    struct i2o_device_identity *ident;
    int lun = device_get_unit(dev);
    int8_t name [32];

    if (!(reply = iop_get_util_params(psc->iop, psc->lct->local_tid,
          I2O_PARAMS_OPERATION_FIELD_GET,
          I2O_BSA_DEVICE_INFO_GROUP_NO)))
 return ENODEV;

    if (!(psc->info = (struct i2o_bsa_device *)
     malloc(sizeof(struct i2o_bsa_device), M_PSTRAID, M_NOWAIT))) {
 contigfree(reply, PAGE_SIZE, M_PSTIOP);
 return ENOMEM;
    }
    bcopy(reply->result, psc->info, sizeof(struct i2o_bsa_device));
    contigfree(reply, PAGE_SIZE, M_PSTIOP);

    if (!(reply = iop_get_util_params(psc->iop, psc->lct->local_tid,
          I2O_PARAMS_OPERATION_FIELD_GET,
          I2O_UTIL_DEVICE_IDENTITY_GROUP_NO)))
 return ENODEV;
    ident = (struct i2o_device_identity *)reply->result;
    bpack(ident->vendor, ident->vendor, 16);
    bpack(ident->product, ident->product, 16);
    sprintf(name, "%s %s", ident->vendor, ident->product);
    contigfree(reply, PAGE_SIZE, M_PSTIOP);

    bioq_init(&psc->queue);

    psc->disk = disk_alloc();
    psc->disk->d_name = "pst";
    psc->disk->d_strategy = pststrategy;
    psc->disk->d_maxsize = 64 * 1024;
    psc->disk->d_drv1 = psc;
    psc->disk->d_unit = lun;

    psc->disk->d_sectorsize = psc->info->block_size;
    psc->disk->d_mediasize = psc->info->capacity;
    psc->disk->d_fwsectors = 63;
    psc->disk->d_fwheads = 255;

    disk_create(psc->disk, DISK_VERSION);

    printf("pst%d: %lluMB <%.40s> [%lld/%d/%d] on %.16s\n", lun,
    (unsigned long long)psc->info->capacity / (1024 * 1024),
    name, psc->info->capacity/(512*255*63), 255, 63,
    device_get_nameunit(psc->iop->dev));

    EVENTHANDLER_REGISTER(shutdown_post_sync, pst_shutdown,
     dev, SHUTDOWN_PRI_FIRST);
    return 0;
}
