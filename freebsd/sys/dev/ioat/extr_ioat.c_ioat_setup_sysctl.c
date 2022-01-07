
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_2__ {int last_halt_chanerr; int channel_halts; int descriptors_error; int descriptors_submitted; int descriptors_processed; int interrupts; } ;
struct ioat_softc {TYPE_1__ stats; int cached_intrdelay; int is_submitter_processing; int * comp_update; int tail; int head; int ring_size_order; int intrdelay_max; int intrdelay_supported; int max_xfer_size; int version; } ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLFLAG_STATS ;
 int CTLTYPE_INT ;
 int CTLTYPE_STRING ;
 struct ioat_softc* DEVICE2SOFTC (int ) ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,int ,char*) ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct ioat_softc*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_U16 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,int ,char*) ;
 int SYSCTL_ADD_U32 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,int ,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,int ,char*) ;
 int SYSCTL_ADD_UQUAD (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int sysctl_handle_chansts ;
 int sysctl_handle_dpi ;
 int sysctl_handle_reset ;

__attribute__((used)) static void
ioat_setup_sysctl(device_t device)
{
 struct sysctl_oid_list *par, *statpar, *state, *hammer;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree, *tmp;
 struct ioat_softc *ioat;

 ioat = DEVICE2SOFTC(device);
 ctx = device_get_sysctl_ctx(device);
 tree = device_get_sysctl_tree(device);
 par = SYSCTL_CHILDREN(tree);

 SYSCTL_ADD_INT(ctx, par, OID_AUTO, "version", CTLFLAG_RD,
     &ioat->version, 0, "HW version (0xMM form)");
 SYSCTL_ADD_UINT(ctx, par, OID_AUTO, "max_xfer_size", CTLFLAG_RD,
     &ioat->max_xfer_size, 0, "HW maximum transfer size");
 SYSCTL_ADD_INT(ctx, par, OID_AUTO, "intrdelay_supported", CTLFLAG_RD,
     &ioat->intrdelay_supported, 0, "Is INTRDELAY supported");
 SYSCTL_ADD_U16(ctx, par, OID_AUTO, "intrdelay_max", CTLFLAG_RD,
     &ioat->intrdelay_max, 0,
     "Maximum configurable INTRDELAY on this channel (microseconds)");

 tmp = SYSCTL_ADD_NODE(ctx, par, OID_AUTO, "state", CTLFLAG_RD, ((void*)0),
     "IOAT channel internal state");
 state = SYSCTL_CHILDREN(tmp);

 SYSCTL_ADD_UINT(ctx, state, OID_AUTO, "ring_size_order", CTLFLAG_RD,
     &ioat->ring_size_order, 0, "SW descriptor ring size order");
 SYSCTL_ADD_UINT(ctx, state, OID_AUTO, "head", CTLFLAG_RD, &ioat->head,
     0, "SW descriptor head pointer index");
 SYSCTL_ADD_UINT(ctx, state, OID_AUTO, "tail", CTLFLAG_RD, &ioat->tail,
     0, "SW descriptor tail pointer index");

 SYSCTL_ADD_UQUAD(ctx, state, OID_AUTO, "last_completion", CTLFLAG_RD,
     ioat->comp_update, "HW addr of last completion");

 SYSCTL_ADD_INT(ctx, state, OID_AUTO, "is_submitter_processing",
     CTLFLAG_RD, &ioat->is_submitter_processing, 0,
     "submitter processing");

 SYSCTL_ADD_PROC(ctx, state, OID_AUTO, "chansts",
     CTLTYPE_STRING | CTLFLAG_RD, ioat, 0, sysctl_handle_chansts, "A",
     "String of the channel status");

 SYSCTL_ADD_U16(ctx, state, OID_AUTO, "intrdelay", CTLFLAG_RD,
     &ioat->cached_intrdelay, 0,
     "Current INTRDELAY on this channel (cached, microseconds)");

 tmp = SYSCTL_ADD_NODE(ctx, par, OID_AUTO, "hammer", CTLFLAG_RD, ((void*)0),
     "Big hammers (mostly for testing)");
 hammer = SYSCTL_CHILDREN(tmp);

 SYSCTL_ADD_PROC(ctx, hammer, OID_AUTO, "force_hw_reset",
     CTLTYPE_INT | CTLFLAG_RW, ioat, 0, sysctl_handle_reset, "I",
     "Set to non-zero to reset the hardware");

 tmp = SYSCTL_ADD_NODE(ctx, par, OID_AUTO, "stats", CTLFLAG_RD, ((void*)0),
     "IOAT channel statistics");
 statpar = SYSCTL_CHILDREN(tmp);

 SYSCTL_ADD_UQUAD(ctx, statpar, OID_AUTO, "interrupts",
     CTLFLAG_RW | CTLFLAG_STATS, &ioat->stats.interrupts,
     "Number of interrupts processed on this channel");
 SYSCTL_ADD_UQUAD(ctx, statpar, OID_AUTO, "descriptors",
     CTLFLAG_RW | CTLFLAG_STATS, &ioat->stats.descriptors_processed,
     "Number of descriptors processed on this channel");
 SYSCTL_ADD_UQUAD(ctx, statpar, OID_AUTO, "submitted",
     CTLFLAG_RW | CTLFLAG_STATS, &ioat->stats.descriptors_submitted,
     "Number of descriptors submitted to this channel");
 SYSCTL_ADD_UQUAD(ctx, statpar, OID_AUTO, "errored",
     CTLFLAG_RW | CTLFLAG_STATS, &ioat->stats.descriptors_error,
     "Number of descriptors failed by channel errors");
 SYSCTL_ADD_U32(ctx, statpar, OID_AUTO, "halts",
     CTLFLAG_RW | CTLFLAG_STATS, &ioat->stats.channel_halts, 0,
     "Number of times the channel has halted");
 SYSCTL_ADD_U32(ctx, statpar, OID_AUTO, "last_halt_chanerr",
     CTLFLAG_RW | CTLFLAG_STATS, &ioat->stats.last_halt_chanerr, 0,
     "The raw CHANERR when the channel was last halted");

 SYSCTL_ADD_PROC(ctx, statpar, OID_AUTO, "desc_per_interrupt",
     CTLTYPE_STRING | CTLFLAG_RD, ioat, 0, sysctl_handle_dpi, "A",
     "Descriptors per interrupt");
}
