
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct etherswitch_softc {int sc_dev; } ;
struct cdev {struct etherswitch_softc* si_drv1; } ;
typedef int etherswitch_vlangroup_t ;
struct TYPE_4__ {int val; int reg; } ;
typedef TYPE_1__ etherswitch_reg_t ;
struct TYPE_5__ {int es_port; } ;
typedef TYPE_2__ etherswitch_portid_t ;
typedef int etherswitch_port_t ;
struct TYPE_6__ {int val; int reg; int phy; } ;
typedef TYPE_3__ etherswitch_phyreg_t ;
typedef int etherswitch_info_t ;
typedef int etherswitch_conf_t ;
typedef int device_t ;
typedef scalar_t__ caddr_t ;


 int ENOTTY ;
 int ETHERSWITCH_FETCH_TABLE (int ,void*) ;
 int ETHERSWITCH_FETCH_TABLE_ENTRY (int ,void*) ;
 int ETHERSWITCH_FLUSH_ALL (int ) ;
 int ETHERSWITCH_FLUSH_PORT (int ,int ) ;
 int ETHERSWITCH_GETCONF (int ,int *) ;
 int * ETHERSWITCH_GETINFO (int ) ;
 int ETHERSWITCH_GETPORT (int ,int *) ;
 int ETHERSWITCH_GETVGROUP (int ,int *) ;
 int ETHERSWITCH_LOCK (int ) ;
 int ETHERSWITCH_READPHYREG (int ,int ,int ) ;
 int ETHERSWITCH_READREG (int ,int ) ;
 int ETHERSWITCH_SETCONF (int ,int *) ;
 int ETHERSWITCH_SETPORT (int ,int *) ;
 int ETHERSWITCH_SETVGROUP (int ,int *) ;
 int ETHERSWITCH_UNLOCK (int ) ;
 int ETHERSWITCH_WRITEPHYREG (int ,int ,int ,int ) ;
 int ETHERSWITCH_WRITEREG (int ,int ,int ) ;
 int bcopy (int *,scalar_t__,int) ;
 int bzero (int *,int) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
etherswitchioctl(struct cdev *cdev, u_long cmd, caddr_t data, int flags, struct thread *td)
{
 struct etherswitch_softc *sc = cdev->si_drv1;
 device_t dev = sc->sc_dev;
 device_t etherswitch = device_get_parent(dev);
 etherswitch_conf_t conf;
 etherswitch_info_t *info;
 etherswitch_reg_t *reg;
 etherswitch_phyreg_t *phyreg;
 etherswitch_portid_t *portid;
 int error = 0;

 switch (cmd) {
 case 139:
  info = ETHERSWITCH_GETINFO(etherswitch);
  bcopy(info, data, sizeof(etherswitch_info_t));
  break;

 case 136:
  reg = (etherswitch_reg_t *)data;
  ETHERSWITCH_LOCK(etherswitch);
  reg->val = ETHERSWITCH_READREG(etherswitch, reg->reg);
  ETHERSWITCH_UNLOCK(etherswitch);
  break;

 case 129:
  reg = (etherswitch_reg_t *)data;
  ETHERSWITCH_LOCK(etherswitch);
  error = ETHERSWITCH_WRITEREG(etherswitch, reg->reg, reg->val);
  ETHERSWITCH_UNLOCK(etherswitch);
  break;

 case 137:
  error = ETHERSWITCH_GETPORT(etherswitch, (etherswitch_port_t *)data);
  break;

 case 130:
  error = ETHERSWITCH_SETPORT(etherswitch, (etherswitch_port_t *)data);
  break;

 case 133:
  error = ETHERSWITCH_GETVGROUP(etherswitch, (etherswitch_vlangroup_t *)data);
  break;

 case 128:
  error = ETHERSWITCH_SETVGROUP(etherswitch, (etherswitch_vlangroup_t *)data);
  break;

 case 138:
  phyreg = (etherswitch_phyreg_t *)data;
  phyreg->val = ETHERSWITCH_READPHYREG(etherswitch, phyreg->phy, phyreg->reg);
  break;

 case 131:
  phyreg = (etherswitch_phyreg_t *)data;
  error = ETHERSWITCH_WRITEPHYREG(etherswitch, phyreg->phy, phyreg->reg, phyreg->val);
  break;

 case 140:
  bzero(&conf, sizeof(etherswitch_conf_t));
  error = ETHERSWITCH_GETCONF(etherswitch, &conf);
  bcopy(&conf, data, sizeof(etherswitch_conf_t));
  break;

 case 132:
  error = ETHERSWITCH_SETCONF(etherswitch, (etherswitch_conf_t *)data);
  break;

 case 142:
  error = ETHERSWITCH_FLUSH_ALL(etherswitch);
  break;

 case 141:
  portid = (etherswitch_portid_t *)data;
  error = ETHERSWITCH_FLUSH_PORT(etherswitch, portid->es_port);
  break;

 case 135:
  error = ETHERSWITCH_FETCH_TABLE(etherswitch, (void *) data);
  break;

 case 134:
  error = ETHERSWITCH_FETCH_TABLE_ENTRY(etherswitch, (void *) data);
  break;

 default:
  error = ENOTTY;
 }

 return (error);
}
