
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef scalar_t__ uint64_t ;
typedef size_t uint32_t ;
typedef int u64q_t ;
typedef int u32q_t ;
struct TYPE_16__ {TYPE_4__* bkts; } ;
struct TYPE_14__ {scalar_t__ linstepdiv; int stepbase; } ;
struct TYPE_13__ {int stepexp; int stepbase; } ;
struct TYPE_12__ {scalar_t__ stepinc; } ;
struct vss_hist_hlpr_info {int scheme; int voi_dtype; TYPE_5__ usr; TYPE_3__ linexp; TYPE_2__ exp; TYPE_1__ lin; } ;
struct TYPE_11__ {int uq64; int sq64; } ;
struct TYPE_20__ {int uq32; int sq32; } ;
struct TYPE_19__ {long slong; unsigned long ulong; } ;
struct TYPE_18__ {scalar_t__ u64; int s64; } ;
struct TYPE_17__ {size_t u32; int s32; } ;
struct voistatdata_numeric {TYPE_10__ q64; TYPE_9__ q32; TYPE_8__ intlong; TYPE_7__ int64; TYPE_6__ int32; } ;
typedef int s64q_t ;
typedef int s32q_t ;
typedef int int64_t ;
typedef int int32_t ;
struct TYPE_15__ {struct voistatdata_numeric ub; struct voistatdata_numeric lb; } ;





 int BKT_USR ;
 int EINVAL ;
 int Q_GIVAL (int ) ;
 int Q_QADDI (int *,scalar_t__) ;
 scalar_t__ stats_pow_u64 (int ,scalar_t__) ;

__attribute__((used)) static inline int
stats_vss_hist_bkt_hlpr(struct vss_hist_hlpr_info *info, uint32_t curbkt,
    struct voistatdata_numeric *bkt_lb, struct voistatdata_numeric *bkt_ub)
{
 uint64_t step = 0;
 int error = 0;

 switch (info->scheme) {
 case 139:
  step = info->lin.stepinc;
  break;
 case 140:
  step = stats_pow_u64(info->exp.stepbase,
      info->exp.stepexp + curbkt);
  break;
 case 138:
  {
  uint64_t curstepexp = 1;

  switch (info->voi_dtype) {
  case 137:
   while ((int32_t)stats_pow_u64(info->linexp.stepbase,
       curstepexp) <= bkt_lb->int32.s32)
    curstepexp++;
   break;
  case 134:
   while ((uint32_t)stats_pow_u64(info->linexp.stepbase,
       curstepexp) <= bkt_lb->int32.u32)
    curstepexp++;
   break;
  case 136:
   while ((int64_t)stats_pow_u64(info->linexp.stepbase,
       curstepexp) <= bkt_lb->int64.s64)
    curstepexp++;
   break;
  case 133:
   while ((uint64_t)stats_pow_u64(info->linexp.stepbase,
       curstepexp) <= bkt_lb->int64.u64)
    curstepexp++;
   break;
  case 135:
   while ((long)stats_pow_u64(info->linexp.stepbase,
       curstepexp) <= bkt_lb->intlong.slong)
    curstepexp++;
   break;
  case 132:
   while ((unsigned long)stats_pow_u64(info->linexp.stepbase,
       curstepexp) <= bkt_lb->intlong.ulong)
    curstepexp++;
   break;
  case 131:
   while ((s32q_t)stats_pow_u64(info->linexp.stepbase,
       curstepexp) <= Q_GIVAL(bkt_lb->q32.sq32))
   break;
  case 129:
   while ((u32q_t)stats_pow_u64(info->linexp.stepbase,
       curstepexp) <= Q_GIVAL(bkt_lb->q32.uq32))
   break;
  case 130:
   while ((s64q_t)stats_pow_u64(info->linexp.stepbase,
       curstepexp) <= Q_GIVAL(bkt_lb->q64.sq64))
    curstepexp++;
   break;
  case 128:
   while ((u64q_t)stats_pow_u64(info->linexp.stepbase,
       curstepexp) <= Q_GIVAL(bkt_lb->q64.uq64))
    curstepexp++;
   break;
  default:
   break;
  }

  step = stats_pow_u64(info->linexp.stepbase, curstepexp) /
      info->linexp.linstepdiv;
  if (step == 0)
   step = 1;
  break;
  }
 default:
  break;
 }

 if (info->scheme == BKT_USR) {
  *bkt_lb = info->usr.bkts[curbkt].lb;
  *bkt_ub = info->usr.bkts[curbkt].ub;
 } else if (step != 0) {
  switch (info->voi_dtype) {
  case 137:
   bkt_ub->int32.s32 += (int32_t)step;
   break;
  case 134:
   bkt_ub->int32.u32 += (uint32_t)step;
   break;
  case 136:
   bkt_ub->int64.s64 += (int64_t)step;
   break;
  case 133:
   bkt_ub->int64.u64 += (uint64_t)step;
   break;
  case 135:
   bkt_ub->intlong.slong += (long)step;
   break;
  case 132:
   bkt_ub->intlong.ulong += (unsigned long)step;
   break;
  case 131:
   error = Q_QADDI(&bkt_ub->q32.sq32, step);
   break;
  case 129:
   error = Q_QADDI(&bkt_ub->q32.uq32, step);
   break;
  case 130:
   error = Q_QADDI(&bkt_ub->q64.sq64, step);
   break;
  case 128:
   error = Q_QADDI(&bkt_ub->q64.uq64, step);
   break;
  default:
   break;
  }
 } else {
  return (EINVAL);
 }

 return (error);
}
