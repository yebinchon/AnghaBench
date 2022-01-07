
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


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_14__ {int uq64; int sq64; } ;
struct TYPE_24__ {int uq32; int sq32; } ;
struct TYPE_22__ {int ulong; int slong; } ;
struct TYPE_20__ {int u64; int s64; } ;
struct TYPE_18__ {int u32; int s32; } ;
struct voistatdata_numeric {TYPE_11__ q64; TYPE_9__ q32; TYPE_7__ intlong; TYPE_5__ int64; TYPE_3__ int32; } ;
struct voistatdata_hist {int dummy; } ;
struct TYPE_13__ {int uq64; int sq64; } ;
struct TYPE_23__ {int uq32; int sq32; } ;
struct TYPE_21__ {int ulong; int slong; } ;
struct TYPE_19__ {int u64; int s64; } ;
struct TYPE_17__ {int u32; int s32; } ;
struct voistatdata {TYPE_10__ q64; TYPE_8__ q32; TYPE_6__ intlong; TYPE_4__ int64; TYPE_2__ int32; } ;
struct voistat {int dtype; int flags; int dsz; } ;
typedef enum vsd_dtype { ____Placeholder_vsd_dtype } vsd_dtype ;
struct TYPE_16__ {int cnt; struct voistatdata_numeric val; struct voistatdata_numeric ub; struct voistatdata_numeric lb; } ;
struct TYPE_15__ {int oob; TYPE_1__* bkts; } ;


 int EINVAL ;
 int HIST_VSDSZ2NBKTS (int ,int ) ;
 int Q_QEQ (int ,int ) ;
 int Q_QGEQ (int ,int ) ;
 int Q_QLTQ (int ,int ) ;
 TYPE_12__* VSD (int ,struct voistatdata_hist*) ;
 int VS_VSDVALID ;
 int crhist32 ;
 int crhist64 ;
 int drhist32 ;
 int drhist64 ;
 int dvhist32 ;
 int dvhist64 ;

__attribute__((used)) static inline int
stats_v1_voi_update_hist(enum vsd_dtype voi_dtype, struct voistatdata *voival,
    struct voistat *vs, struct voistatdata_hist *hist)
{
 struct voistatdata_numeric *bkt_lb, *bkt_ub;
 uint64_t *oob64, *cnt64;
 uint32_t *oob32, *cnt32;
 int error, i, found, is32bit, has_ub, eq_only;

 error = 0;

 switch (vs->dtype) {
 case 143:
  i = HIST_VSDSZ2NBKTS(crhist32, vs->dsz);
  is32bit = 1;
  has_ub = eq_only = 0;
  oob32 = &VSD(crhist32, hist)->oob;
  break;
 case 141:
  i = HIST_VSDSZ2NBKTS(drhist32, vs->dsz);
  is32bit = has_ub = 1;
  eq_only = 0;
  oob32 = &VSD(drhist32, hist)->oob;
  break;
 case 139:
  i = HIST_VSDSZ2NBKTS(dvhist32, vs->dsz);
  is32bit = eq_only = 1;
  has_ub = 0;
  oob32 = &VSD(dvhist32, hist)->oob;
  break;
 case 142:
  i = HIST_VSDSZ2NBKTS(crhist64, vs->dsz);
  is32bit = has_ub = eq_only = 0;
  oob64 = &VSD(crhist64, hist)->oob;
  break;
 case 140:
  i = HIST_VSDSZ2NBKTS(drhist64, vs->dsz);
  is32bit = eq_only = 0;
  has_ub = 1;
  oob64 = &VSD(drhist64, hist)->oob;
  break;
 case 138:
  i = HIST_VSDSZ2NBKTS(dvhist64, vs->dsz);
  is32bit = has_ub = 0;
  eq_only = 1;
  oob64 = &VSD(dvhist64, hist)->oob;
  break;
 default:
  return (EINVAL);
 }
 i--;


 for (found = 0; i >= 0 && !found; i--) {
  switch (vs->dtype) {
  case 143:
   bkt_lb = &VSD(crhist32, hist)->bkts[i].lb;
   cnt32 = &VSD(crhist32, hist)->bkts[i].cnt;
   break;
  case 141:
   bkt_lb = &VSD(drhist32, hist)->bkts[i].lb;
   bkt_ub = &VSD(drhist32, hist)->bkts[i].ub;
   cnt32 = &VSD(drhist32, hist)->bkts[i].cnt;
   break;
  case 139:
   bkt_lb = &VSD(dvhist32, hist)->bkts[i].val;
   cnt32 = &VSD(dvhist32, hist)->bkts[i].cnt;
   break;
  case 142:
   bkt_lb = &VSD(crhist64, hist)->bkts[i].lb;
   cnt64 = &VSD(crhist64, hist)->bkts[i].cnt;
   break;
  case 140:
   bkt_lb = &VSD(drhist64, hist)->bkts[i].lb;
   bkt_ub = &VSD(drhist64, hist)->bkts[i].ub;
   cnt64 = &VSD(drhist64, hist)->bkts[i].cnt;
   break;
  case 138:
   bkt_lb = &VSD(dvhist64, hist)->bkts[i].val;
   cnt64 = &VSD(dvhist64, hist)->bkts[i].cnt;
   break;
  default:
   return (EINVAL);
  }

  switch (voi_dtype) {
  case 137:
   if (voival->int32.s32 >= bkt_lb->int32.s32) {
    if ((eq_only && voival->int32.s32 ==
        bkt_lb->int32.s32) ||
        (!eq_only && (!has_ub ||
        voival->int32.s32 < bkt_ub->int32.s32)))
     found = 1;
   }
   break;
  case 134:
   if (voival->int32.u32 >= bkt_lb->int32.u32) {
    if ((eq_only && voival->int32.u32 ==
        bkt_lb->int32.u32) ||
        (!eq_only && (!has_ub ||
        voival->int32.u32 < bkt_ub->int32.u32)))
     found = 1;
   }
   break;
  case 136:
   if (voival->int64.s64 >= bkt_lb->int64.s64)
    if ((eq_only && voival->int64.s64 ==
        bkt_lb->int64.s64) ||
        (!eq_only && (!has_ub ||
        voival->int64.s64 < bkt_ub->int64.s64)))
     found = 1;
   break;
  case 133:
   if (voival->int64.u64 >= bkt_lb->int64.u64)
    if ((eq_only && voival->int64.u64 ==
        bkt_lb->int64.u64) ||
        (!eq_only && (!has_ub ||
        voival->int64.u64 < bkt_ub->int64.u64)))
     found = 1;
   break;
  case 135:
   if (voival->intlong.slong >= bkt_lb->intlong.slong)
    if ((eq_only && voival->intlong.slong ==
        bkt_lb->intlong.slong) ||
        (!eq_only && (!has_ub ||
        voival->intlong.slong <
        bkt_ub->intlong.slong)))
     found = 1;
   break;
  case 132:
   if (voival->intlong.ulong >= bkt_lb->intlong.ulong)
    if ((eq_only && voival->intlong.ulong ==
        bkt_lb->intlong.ulong) ||
        (!eq_only && (!has_ub ||
        voival->intlong.ulong <
        bkt_ub->intlong.ulong)))
     found = 1;
   break;
  case 131:
   if (Q_QGEQ(voival->q32.sq32, bkt_lb->q32.sq32))
    if ((eq_only && Q_QEQ(voival->q32.sq32,
        bkt_lb->q32.sq32)) ||
        (!eq_only && (!has_ub ||
        Q_QLTQ(voival->q32.sq32,
        bkt_ub->q32.sq32))))
     found = 1;
   break;
  case 129:
   if (Q_QGEQ(voival->q32.uq32, bkt_lb->q32.uq32))
    if ((eq_only && Q_QEQ(voival->q32.uq32,
        bkt_lb->q32.uq32)) ||
        (!eq_only && (!has_ub ||
        Q_QLTQ(voival->q32.uq32,
        bkt_ub->q32.uq32))))
     found = 1;
   break;
  case 130:
   if (Q_QGEQ(voival->q64.sq64, bkt_lb->q64.sq64))
    if ((eq_only && Q_QEQ(voival->q64.sq64,
        bkt_lb->q64.sq64)) ||
        (!eq_only && (!has_ub ||
        Q_QLTQ(voival->q64.sq64,
        bkt_ub->q64.sq64))))
     found = 1;
   break;
  case 128:
   if (Q_QGEQ(voival->q64.uq64, bkt_lb->q64.uq64))
    if ((eq_only && Q_QEQ(voival->q64.uq64,
        bkt_lb->q64.uq64)) ||
        (!eq_only && (!has_ub ||
        Q_QLTQ(voival->q64.uq64,
        bkt_ub->q64.uq64))))
     found = 1;
   break;
  default:
   break;
  }
 }

 if (found) {
  if (is32bit)
   *cnt32 += 1;
  else
   *cnt64 += 1;
 } else {
  if (is32bit)
   *oob32 += 1;
  else
   *oob64 += 1;
 }

 vs->flags |= VS_VSDVALID;
 return (error);
}
