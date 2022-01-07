
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ispsoftc_t ;


 int ISP_LOGALL ;
 int ISP_SNPRINTF (char*,int,char*,char*,int) ;
 int isp_prt (int *,int ,char*,...) ;

void
isp_print_bytes(ispsoftc_t *isp, const char *msg, int amt, void *arg)
{
 char buf[128];
 uint8_t *ptr = arg;
 int off;

 if (msg)
  isp_prt(isp, ISP_LOGALL, "%s:", msg);
 off = 0;
 buf[0] = 0;
 while (off < amt) {
  int j, to;
  to = off;
  for (j = 0; j < 16; j++) {
   ISP_SNPRINTF(buf, 128, "%s %02x", buf, ptr[off++] & 0xff);
   if (off == amt) {
    break;
   }
  }
  isp_prt(isp, ISP_LOGALL, "0x%08x:%s", to, buf);
  buf[0] = 0;
 }
}
