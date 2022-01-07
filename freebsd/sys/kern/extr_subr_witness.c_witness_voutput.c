
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int LOG_NOTICE ;



 int vlog (int ,char const*,int ) ;
 int vprintf (char const*,int ) ;
 int witness_channel ;

__attribute__((used)) static int
witness_voutput(const char *fmt, va_list ap)
{
 int ret;

 ret = 0;
 switch (witness_channel) {
 case 130:
  ret = vprintf(fmt, ap);
  break;
 case 129:
  vlog(LOG_NOTICE, fmt, ap);
  break;
 case 128:
  break;
 }
 return (ret);
}
