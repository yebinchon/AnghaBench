
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmbus_chan_callback_t ;
struct vmbus_ic_softc {int ic_buf; int ic_buflen; int ic_dev; } ;
struct vmbus_channel {int dummy; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef int device_t ;


 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int CTLTYPE_STRING ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct vmbus_ic_softc*,int ,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 int VMBUS_IC_BRSIZE ;
 struct vmbus_ic_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int free (int ,int ) ;
 int malloc (int ,int ,int) ;
 int vmbus_chan_open (struct vmbus_channel*,int ,int ,int *,int ,int ,struct vmbus_ic_softc*) ;
 int vmbus_chan_set_readbatch (struct vmbus_channel*,int) ;
 struct vmbus_channel* vmbus_get_channel (int ) ;
 int vmbus_ic_fwver_sysctl ;
 int vmbus_ic_msgver_sysctl ;

int
vmbus_ic_attach(device_t dev, vmbus_chan_callback_t cb)
{
 struct vmbus_ic_softc *sc = device_get_softc(dev);
 struct vmbus_channel *chan = vmbus_get_channel(dev);
 struct sysctl_oid_list *child;
 struct sysctl_ctx_list *ctx;
 int error;

 sc->ic_dev = dev;
 sc->ic_buflen = VMBUS_IC_BRSIZE;
 sc->ic_buf = malloc(VMBUS_IC_BRSIZE, M_DEVBUF, M_WAITOK | M_ZERO);
 vmbus_chan_set_readbatch(chan, 0);

 error = vmbus_chan_open(chan, VMBUS_IC_BRSIZE, VMBUS_IC_BRSIZE, ((void*)0), 0,
     cb, sc);
 if (error) {
  free(sc->ic_buf, M_DEVBUF);
  return (error);
 }

 ctx = device_get_sysctl_ctx(dev);
 child = SYSCTL_CHILDREN(device_get_sysctl_tree(dev));
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "fw_version",
     CTLTYPE_STRING | CTLFLAG_RD | CTLFLAG_MPSAFE, sc, 0,
     vmbus_ic_fwver_sysctl, "A", "framework version");
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "msg_version",
     CTLTYPE_STRING | CTLFLAG_RD | CTLFLAG_MPSAFE, sc, 0,
     vmbus_ic_msgver_sysctl, "A", "message version");

 return (0);
}
