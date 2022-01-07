
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MB_TO_UC_FLAG ;
 int MB_TO_WC_FLAG ;
 int UC_TO_MB_FLAG ;
 int WC_TO_MB_FLAG ;
 int fb_flags ;
 int printf (char*,char const*,char const*,char const*,char const*,char const*) ;

__attribute__((used)) static void
format_diag(int errcode)
{
 const char *errstr;
 const char *u2m, *m2u, *m2w, *w2m;

 switch (errcode) {
 case 128:
  errstr = "EINVAL ";
  break;
 case 129:
  errstr = "EILSEQ ";
  break;
 case 130:
  errstr = "E2BIG ";
  break;
 default:
  errstr = "UNKNOWN ";
  break;
 }

 u2m = (fb_flags & UC_TO_MB_FLAG) ? "U2M " : "";
 m2w = (fb_flags & MB_TO_WC_FLAG) ? "M2W " : "";
 m2u = (fb_flags & MB_TO_UC_FLAG) ? "M2U " : "";
 w2m = (fb_flags & WC_TO_MB_FLAG) ? "W2M " : "";

 printf("%s%s%s%s%s", errstr, u2m, m2w, m2u, w2m);
}
