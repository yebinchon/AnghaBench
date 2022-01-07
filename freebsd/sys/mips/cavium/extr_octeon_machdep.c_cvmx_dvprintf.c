
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int bootverbose ;
 int vprintf (char const*,int ) ;

void
cvmx_dvprintf(const char *fmt, va_list ap)
{
 if (!bootverbose)
  return;
 vprintf(fmt, ap);
}
