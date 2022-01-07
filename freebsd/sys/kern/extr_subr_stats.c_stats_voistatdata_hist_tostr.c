
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uintmax_t ;
typedef size_t uint16_t ;
struct voistatdata_numeric {int dummy; } ;
struct voistatdata_hist {int dummy; } ;
struct voistatdata {int dummy; } ;
struct sbuf {int dummy; } ;
typedef enum vsd_dtype { ____Placeholder_vsd_dtype } vsd_dtype ;
typedef enum sb_str_fmt { ____Placeholder_sb_str_fmt } sb_str_fmt ;
struct TYPE_2__ {int cnt; int val; int ub; int lb; } ;


 size_t HIST_VSDSZ2NBKTS (int ,size_t) ;
 size_t LIM_MAX ;


 struct voistatdata_numeric* VSD_CONSTCRHIST_FIELDPTR (struct voistatdata_hist const*,int,int ) ;
 struct voistatdata_numeric* VSD_CONSTDRHIST_FIELDPTR (struct voistatdata_hist const*,int,int ) ;
 struct voistatdata_numeric* VSD_CONSTDVHIST_FIELDPTR (struct voistatdata_hist const*,int,int ) ;
 size_t VSD_CONSTHIST_FIELDVAL (struct voistatdata_hist const*,int,int ) ;






 TYPE_1__* bkts ;
 int crhist32 ;
 int crhist64 ;
 int drhist32 ;
 int drhist64 ;
 int dvhist32 ;
 int dvhist64 ;
 struct voistatdata_numeric** numeric_limits ;
 int oob ;
 int sbuf_cat (struct sbuf*,char const*) ;
 int sbuf_printf (struct sbuf*,char const*,size_t) ;
 int sbuf_putc (struct sbuf*,char) ;
 int stats_voistatdata_tostr (struct voistatdata const*,int,int,int,int,struct sbuf*,int) ;

__attribute__((used)) static inline void
stats_voistatdata_hist_tostr(enum vsd_dtype voi_dtype,
    const struct voistatdata_hist *hist, enum vsd_dtype hist_dtype,
    size_t hist_dsz, enum sb_str_fmt fmt, struct sbuf *buf, int objdump)
{
 const struct voistatdata_numeric *bkt_lb, *bkt_ub;
 const char *fmtstr;
 int is32bit;
 uint16_t i, nbkts;

 switch (hist_dtype) {
 case 133:
  nbkts = HIST_VSDSZ2NBKTS(crhist32, hist_dsz);
  is32bit = 1;
  break;
 case 131:
  nbkts = HIST_VSDSZ2NBKTS(drhist32, hist_dsz);
  is32bit = 1;
  break;
 case 129:
  nbkts = HIST_VSDSZ2NBKTS(dvhist32, hist_dsz);
  is32bit = 1;
  break;
 case 132:
  nbkts = HIST_VSDSZ2NBKTS(crhist64, hist_dsz);
  is32bit = 0;
  break;
 case 130:
  nbkts = HIST_VSDSZ2NBKTS(drhist64, hist_dsz);
  is32bit = 0;
  break;
 case 128:
  nbkts = HIST_VSDSZ2NBKTS(dvhist64, hist_dsz);
  is32bit = 0;
  break;
 default:
  return;
 }

 switch (fmt) {
 case 135:
  fmtstr = "nbkts=%hu, ";
  break;
 case 134:
 default:
  fmtstr = "\"nbkts\":%hu,";
  break;
 }
 sbuf_printf(buf, fmtstr, nbkts);

 switch (fmt) {
  case 135:
   fmtstr = (is32bit ? "oob=%u" : "oob=%ju");
   break;
  case 134:
  default:
   fmtstr = (is32bit ? "\"oob\":%u,\"bkts\":[" :
       "\"oob\":%ju,\"bkts\":[");
   break;
 }
 sbuf_printf(buf, fmtstr, is32bit ? VSD_CONSTHIST_FIELDVAL(hist,
     hist_dtype, oob) : (uintmax_t)VSD_CONSTHIST_FIELDVAL(hist,
     hist_dtype, oob));

 for (i = 0; i < nbkts; i++) {
  switch (hist_dtype) {
  case 133:
  case 132:
   bkt_lb = VSD_CONSTCRHIST_FIELDPTR(hist, hist_dtype,
       bkts[i].lb);
   if (i < nbkts - 1)
    bkt_ub = VSD_CONSTCRHIST_FIELDPTR(hist,
        hist_dtype, bkts[i + 1].lb);
   else
    bkt_ub = &numeric_limits[LIM_MAX][voi_dtype];
   break;
  case 131:
  case 130:
   bkt_lb = VSD_CONSTDRHIST_FIELDPTR(hist, hist_dtype,
       bkts[i].lb);
   bkt_ub = VSD_CONSTDRHIST_FIELDPTR(hist, hist_dtype,
       bkts[i].ub);
   break;
  case 129:
  case 128:
   bkt_lb = bkt_ub = VSD_CONSTDVHIST_FIELDPTR(hist,
       hist_dtype, bkts[i].val);
   break;
  default:
   break;
  }

  switch (fmt) {
  case 135:
   fmtstr = "\n\t\t\t\t";
   break;
  case 134:
  default:
   fmtstr = "{";
   break;
  }
  sbuf_cat(buf, fmtstr);

  if (objdump) {
   switch (fmt) {
   case 135:
    fmtstr = "bkt[%hu].";
    break;
   case 134:
   default:
    fmtstr = "\"bkt\":%hu,";
    break;
   }
   sbuf_printf(buf, fmtstr, i);
  }

  switch (fmt) {
  case 135:
   fmtstr = "{lb=";
   break;
  case 134:
  default:
   fmtstr = "\"lb\":";
   break;
  }
  sbuf_cat(buf, fmtstr);
  stats_voistatdata_tostr((const struct voistatdata *)bkt_lb,
      voi_dtype, voi_dtype, sizeof(struct voistatdata_numeric),
      fmt, buf, objdump);

  switch (fmt) {
  case 135:
   fmtstr = ",ub=";
   break;
  case 134:
  default:
   fmtstr = ",\"ub\":";
   break;
  }
  sbuf_cat(buf, fmtstr);
  stats_voistatdata_tostr((const struct voistatdata *)bkt_ub,
      voi_dtype, voi_dtype, sizeof(struct voistatdata_numeric),
      fmt, buf, objdump);

  switch (fmt) {
  case 135:
   fmtstr = is32bit ? ",cnt=%u}" : ",cnt=%ju}";
   break;
  case 134:
  default:
   fmtstr = is32bit ? ",\"cnt\":%u}" : ",\"cnt\":%ju}";
   break;
  }
  sbuf_printf(buf, fmtstr, is32bit ?
      VSD_CONSTHIST_FIELDVAL(hist, hist_dtype, bkts[i].cnt) :
      (uintmax_t)VSD_CONSTHIST_FIELDVAL(hist, hist_dtype,
      bkts[i].cnt));

  if (fmt == 134 && i < nbkts - 1)
   sbuf_putc(buf, ',');
 }
 if (fmt == 134)
  sbuf_cat(buf, "]");
}
