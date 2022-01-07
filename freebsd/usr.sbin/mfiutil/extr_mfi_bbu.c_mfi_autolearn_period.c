
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int snprintf (char*,size_t,char*,...) ;

void
mfi_autolearn_period(uint32_t period, char *buf, size_t sz)
{
 unsigned int d, h;
 char *tmp;

 d = period / (24 * 3600);
 h = (period % (24 * 3600)) / 3600;

 tmp = buf;
 if (d != 0) {
  tmp += snprintf(buf, sz, "%u day%s", d, d == 1 ? "" : "s");
  sz -= tmp - buf;
  if (h != 0) {
   tmp += snprintf(tmp, sz, ", ");
   sz -= 2;
  }
 }
 if (h != 0)
  snprintf(tmp, sz, "%u hour%s", h, h == 1 ? "" : "s");

 if (d == 0 && h == 0)
  snprintf(tmp, sz, "less than 1 hour");
}
