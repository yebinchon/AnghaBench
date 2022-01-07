
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int uint32_t ;
struct TYPE_22__ {int uq64; int sq64; } ;
struct TYPE_20__ {int uq32; int sq32; } ;
struct TYPE_18__ {int ulong; int slong; } ;
struct TYPE_16__ {int u64; int s64; } ;
struct TYPE_14__ {int u32; int s32; } ;
struct voistatdata {TYPE_7__ q64; TYPE_5__ q32; TYPE_3__ intlong; TYPE_1__ int64; TYPE_11__ int32; } ;
struct voistat {int stype; int data_off; } ;
struct voi {int dtype; scalar_t__ id; int flags; int voistatmaxid; int stats_off; } ;
struct statsblobv1 {scalar_t__ abi; struct voi* vois; } ;
typedef size_t int32_t ;
typedef enum vsd_dtype { ____Placeholder_vsd_dtype } vsd_dtype ;
struct TYPE_24__ {int u32; int s32; } ;
struct TYPE_23__ {int uq64; int sq64; } ;
struct TYPE_21__ {int uq32; int sq32; } ;
struct TYPE_19__ {int ulong; int slong; } ;
struct TYPE_17__ {int u64; int s64; } ;
struct TYPE_13__ {TYPE_8__ q64; TYPE_6__ q32; TYPE_4__ intlong; TYPE_2__ int64; TYPE_9__ int32; } ;
struct TYPE_15__ {TYPE_10__ prev; } ;


 void* BLOB_OFFSET (struct statsblobv1*,int ) ;
 int EINVAL ;
 int KASSERT (int ,char*) ;
 size_t NVOIS (struct statsblobv1*) ;
 int Q_QADDQ (int *,int ) ;
 int Q_QCPYVALQ (int *,int ) ;
 int SB_VOI_RELUPDATE ;
 scalar_t__ STATS_ABI_V1 ;
 int VOI_REQSTATE ;
 TYPE_12__* VSD (int ,void*) ;
 int VSD_NUM_DTYPES ;
 int VS_INCERRS (struct voistat*) ;





 int stats_v1_voi_update_hist (int,struct voistatdata*,struct voistat*,void*) ;
 int stats_v1_voi_update_max (int,struct voistatdata*,struct voistat*,void*) ;
 int stats_v1_voi_update_min (int,struct voistatdata*,struct voistat*,void*) ;
 int stats_v1_voi_update_sum (int,struct voistatdata*,struct voistat*,void*) ;
 int stats_v1_voi_update_tdgst (int,struct voistatdata*,struct voistat*,void*) ;
 int voistate ;

int
stats_v1_voi_update(struct statsblobv1 *sb, int32_t voi_id,
    enum vsd_dtype voi_dtype, struct voistatdata *voival, uint32_t flags)
{
 struct voi *v;
 struct voistat *vs;
 void *statevsd, *vsd;
 int error, i, tmperr;

 error = 0;

 if (sb == ((void*)0) || sb->abi != STATS_ABI_V1 || voi_id >= NVOIS(sb) ||
     voi_dtype == 0 || voi_dtype >= VSD_NUM_DTYPES || voival == ((void*)0))
  return (EINVAL);
 v = &sb->vois[voi_id];
 if (voi_dtype != v->dtype || v->id < 0 ||
     ((flags & SB_VOI_RELUPDATE) && !(v->flags & VOI_REQSTATE)))
  return (EINVAL);

 vs = BLOB_OFFSET(sb, v->stats_off);
 if (v->flags & VOI_REQSTATE)
  statevsd = BLOB_OFFSET(sb, vs->data_off);
 else
  statevsd = ((void*)0);

 if (flags & SB_VOI_RELUPDATE) {
  switch (voi_dtype) {
  case 142:
   voival->int32.s32 +=
       VSD(voistate, statevsd)->prev.int32.s32;
   break;
  case 139:
   voival->int32.u32 +=
       VSD(voistate, statevsd)->prev.int32.u32;
   break;
  case 141:
   voival->int64.s64 +=
       VSD(voistate, statevsd)->prev.int64.s64;
   break;
  case 138:
   voival->int64.u64 +=
       VSD(voistate, statevsd)->prev.int64.u64;
   break;
  case 140:
   voival->intlong.slong +=
       VSD(voistate, statevsd)->prev.intlong.slong;
   break;
  case 137:
   voival->intlong.ulong +=
       VSD(voistate, statevsd)->prev.intlong.ulong;
   break;
  case 136:
   error = Q_QADDQ(&voival->q32.sq32,
       VSD(voistate, statevsd)->prev.q32.sq32);
   break;
  case 134:
   error = Q_QADDQ(&voival->q32.uq32,
       VSD(voistate, statevsd)->prev.q32.uq32);
   break;
  case 135:
   error = Q_QADDQ(&voival->q64.sq64,
       VSD(voistate, statevsd)->prev.q64.sq64);
   break;
  case 133:
   error = Q_QADDQ(&voival->q64.uq64,
       VSD(voistate, statevsd)->prev.q64.uq64);
   break;
  default:
   KASSERT(0, ("Unknown VOI data type %d", voi_dtype));
   break;
  }
 }

 if (error)
  return (error);

 for (i = v->voistatmaxid; i > 0; i--) {
  vs = &((struct voistat *)BLOB_OFFSET(sb, v->stats_off))[i];
  if (vs->stype < 0)
   continue;

  vsd = BLOB_OFFSET(sb, vs->data_off);

  switch (vs->stype) {
  case 131:
   tmperr = stats_v1_voi_update_max(voi_dtype, voival,
       vs, vsd);
   break;
  case 130:
   tmperr = stats_v1_voi_update_min(voi_dtype, voival,
       vs, vsd);
   break;
  case 129:
   tmperr = stats_v1_voi_update_sum(voi_dtype, voival,
       vs, vsd);
   break;
  case 132:
   tmperr = stats_v1_voi_update_hist(voi_dtype, voival,
       vs, vsd);
   break;
  case 128:
   tmperr = stats_v1_voi_update_tdgst(voi_dtype, voival,
       vs, vsd);
   break;
  default:
   KASSERT(0, ("Unknown VOI stat type %d", vs->stype));
   break;
  }

  if (tmperr) {
   error = tmperr;
   VS_INCERRS(vs);
  }
 }

 if (statevsd) {
  switch (voi_dtype) {
  case 142:
   VSD(voistate, statevsd)->prev.int32.s32 =
       voival->int32.s32;
   break;
  case 139:
   VSD(voistate, statevsd)->prev.int32.u32 =
       voival->int32.u32;
   break;
  case 141:
   VSD(voistate, statevsd)->prev.int64.s64 =
       voival->int64.s64;
   break;
  case 138:
   VSD(voistate, statevsd)->prev.int64.u64 =
       voival->int64.u64;
   break;
  case 140:
   VSD(voistate, statevsd)->prev.intlong.slong =
       voival->intlong.slong;
   break;
  case 137:
   VSD(voistate, statevsd)->prev.intlong.ulong =
       voival->intlong.ulong;
   break;
  case 136:
   error = Q_QCPYVALQ(
       &VSD(voistate, statevsd)->prev.q32.sq32,
       voival->q32.sq32);
   break;
  case 134:
   error = Q_QCPYVALQ(
       &VSD(voistate, statevsd)->prev.q32.uq32,
       voival->q32.uq32);
   break;
  case 135:
   error = Q_QCPYVALQ(
       &VSD(voistate, statevsd)->prev.q64.sq64,
       voival->q64.sq64);
   break;
  case 133:
   error = Q_QCPYVALQ(
       &VSD(voistate, statevsd)->prev.q64.uq64,
       voival->q64.uq64);
   break;
  default:
   KASSERT(0, ("Unknown VOI data type %d", voi_dtype));
   break;
  }
 }

 return (error);
}
