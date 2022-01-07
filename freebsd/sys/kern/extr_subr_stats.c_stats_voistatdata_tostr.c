
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int u64q_t ;
typedef int u32q_t ;
struct TYPE_13__ {int uq64; int sq64; } ;
struct TYPE_12__ {int uq32; int sq32; } ;
struct TYPE_11__ {int ulong; int slong; } ;
struct TYPE_10__ {int u64; int s64; } ;
struct TYPE_9__ {int u32; int s32; } ;
struct voistatdata {TYPE_5__ q64; TYPE_4__ q32; TYPE_3__ intlong; TYPE_2__ int64; TYPE_1__ int32; } ;
struct sbuf {int dummy; } ;
typedef int s64q_t ;
typedef int s32q_t ;
typedef int qstr ;
typedef int intmax_t ;
typedef enum vsd_dtype { ____Placeholder_vsd_dtype } vsd_dtype ;
typedef enum sb_str_fmt { ____Placeholder_sb_str_fmt } sb_str_fmt ;
struct TYPE_14__ {int prev; } ;


 TYPE_6__* CONSTVSD (int ,struct voistatdata const*) ;
 int EINVAL ;
 int Q_MAXSTRLEN (int ,int) ;
 int Q_TOSTR (int ,int,int,char*,int) ;


 int SB_STRFMT_NUM_FMTS ;
 int VSD_NUM_DTYPES ;
 int hist ;
 int sbuf_cat (struct sbuf*,char const*) ;
 int sbuf_error (struct sbuf*) ;
 int sbuf_printf (struct sbuf*,char*,int ) ;
 int stats_voistatdata_hist_tostr (int,TYPE_6__*,int,size_t,int,struct sbuf*,int) ;
 int stats_voistatdata_tdgst_tostr (int,TYPE_6__*,int,size_t,int,struct sbuf*,int) ;
 int tdgst ;
 int voistate ;

int
stats_voistatdata_tostr(const struct voistatdata *vsd, enum vsd_dtype voi_dtype,
    enum vsd_dtype vsd_dtype, size_t vsd_sz, enum sb_str_fmt fmt,
    struct sbuf *buf, int objdump)
{
 const char *fmtstr;

 if (vsd == ((void*)0) || buf == ((void*)0) || voi_dtype >= VSD_NUM_DTYPES ||
     vsd_dtype >= VSD_NUM_DTYPES || fmt >= SB_STRFMT_NUM_FMTS)
  return (EINVAL);

 switch (vsd_dtype) {
 case 128:
  switch (fmt) {
  case 148:
   fmtstr = "prev=";
   break;
  case 147:
  default:
   fmtstr = "\"prev\":";
   break;
  }
  sbuf_cat(buf, fmtstr);



  stats_voistatdata_tostr(
      (const struct voistatdata *)&CONSTVSD(voistate, vsd)->prev,
      voi_dtype, voi_dtype, vsd_sz, fmt, buf, objdump);
  break;
 case 140:
  sbuf_printf(buf, "%d", vsd->int32.s32);
  break;
 case 137:
  sbuf_printf(buf, "%u", vsd->int32.u32);
  break;
 case 139:
  sbuf_printf(buf, "%jd", (intmax_t)vsd->int64.s64);
  break;
 case 136:
  sbuf_printf(buf, "%ju", (uintmax_t)vsd->int64.u64);
  break;
 case 138:
  sbuf_printf(buf, "%ld", vsd->intlong.slong);
  break;
 case 135:
  sbuf_printf(buf, "%lu", vsd->intlong.ulong);
  break;
 case 134:
  {
  char qstr[Q_MAXSTRLEN(vsd->q32.sq32, 10)];
  Q_TOSTR((s32q_t)vsd->q32.sq32, -1, 10, qstr, sizeof(qstr));
  sbuf_cat(buf, qstr);
  }
  break;
 case 132:
  {
  char qstr[Q_MAXSTRLEN(vsd->q32.uq32, 10)];
  Q_TOSTR((u32q_t)vsd->q32.uq32, -1, 10, qstr, sizeof(qstr));
  sbuf_cat(buf, qstr);
  }
  break;
 case 133:
  {
  char qstr[Q_MAXSTRLEN(vsd->q64.sq64, 10)];
  Q_TOSTR((s64q_t)vsd->q64.sq64, -1, 10, qstr, sizeof(qstr));
  sbuf_cat(buf, qstr);
  }
  break;
 case 131:
  {
  char qstr[Q_MAXSTRLEN(vsd->q64.uq64, 10)];
  Q_TOSTR((u64q_t)vsd->q64.uq64, -1, 10, qstr, sizeof(qstr));
  sbuf_cat(buf, qstr);
  }
  break;
 case 146:
 case 144:
 case 142:
 case 145:
 case 143:
 case 141:
  stats_voistatdata_hist_tostr(voi_dtype, CONSTVSD(hist, vsd),
      vsd_dtype, vsd_sz, fmt, buf, objdump);
  break;
 case 130:
 case 129:
  stats_voistatdata_tdgst_tostr(voi_dtype,
      CONSTVSD(tdgst, vsd), vsd_dtype, vsd_sz, fmt, buf,
      objdump);
  break;
 default:
  break;
 }

 return (sbuf_error(buf));
}
