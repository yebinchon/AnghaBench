
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef void* u64q_t ;
typedef void* u32q_t ;
struct vss_numeric_hlpr_info {int prec; } ;
struct voistatspec {int stype; int vs_dtype; int * iv; int vsdsz; } ;
struct TYPE_10__ {int uq64; int sq64; } ;
struct TYPE_9__ {int uq32; int sq32; } ;
struct TYPE_8__ {long slong; unsigned long ulong; } ;
struct TYPE_7__ {int u64; int s64; } ;
struct TYPE_6__ {int u32; int s32; } ;
struct voistatdata_numeric {TYPE_5__ q64; TYPE_4__ q32; TYPE_3__ intlong; TYPE_2__ int64; TYPE_1__ int32; } ;
typedef void* s64q_t ;
typedef void* s32q_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef enum vsd_dtype { ____Placeholder_vsd_dtype } vsd_dtype ;


 int EINVAL ;
 int ENOMEM ;
 size_t LIM_MAX ;
 size_t LIM_MIN ;
 int Q_CTRLINI (int ) ;
 void* Q_SCVAL (int ,int ) ;
 struct voistatdata_numeric** numeric_limits ;
 struct voistatdata_numeric stats_ctor_vsd_numeric (int ) ;
 int * stats_realloc (int *,int ,int ,int ) ;
 int * vsd_dtype2size ;

int
stats_vss_numeric_hlpr(enum vsd_dtype voi_dtype, struct voistatspec *vss,
    struct vss_numeric_hlpr_info *info)
{
 struct voistatdata_numeric iv;

 switch (vss->stype) {
 case 128:
  iv = stats_ctor_vsd_numeric(0);
  break;
 case 129:
  iv = numeric_limits[LIM_MAX][voi_dtype];
  break;
 case 130:
  iv = numeric_limits[LIM_MIN][voi_dtype];
  break;
 default:
  return (EINVAL);
 }

 vss->iv = stats_realloc(((void*)0), 0, vsd_dtype2size[voi_dtype], 0);
 if (vss->iv == ((void*)0))
  return (ENOMEM);

 vss->vs_dtype = voi_dtype;
 vss->vsdsz = vsd_dtype2size[voi_dtype];
 switch (voi_dtype) {
 case 140:
  *((int32_t *)vss->iv) = iv.int32.s32;
  break;
 case 137:
  *((uint32_t *)vss->iv) = iv.int32.u32;
  break;
 case 139:
  *((int64_t *)vss->iv) = iv.int64.s64;
  break;
 case 136:
  *((uint64_t *)vss->iv) = iv.int64.u64;
  break;
 case 138:
  *((long *)vss->iv) = iv.intlong.slong;
  break;
 case 135:
  *((unsigned long *)vss->iv) = iv.intlong.ulong;
  break;
 case 134:
  *((s32q_t *)vss->iv) = Q_SCVAL(iv.q32.sq32,
      Q_CTRLINI(info->prec));
  break;
 case 132:
  *((u32q_t *)vss->iv) = Q_SCVAL(iv.q32.uq32,
      Q_CTRLINI(info->prec));
  break;
 case 133:
  *((s64q_t *)vss->iv) = Q_SCVAL(iv.q64.sq64,
      Q_CTRLINI(info->prec));
  break;
 case 131:
  *((u64q_t *)vss->iv) = Q_SCVAL(iv.q64.uq64,
      Q_CTRLINI(info->prec));
  break;
 default:
  break;
 }

 return (0);
}
