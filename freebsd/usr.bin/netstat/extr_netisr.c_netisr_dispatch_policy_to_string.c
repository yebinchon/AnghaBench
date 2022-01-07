
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;






 int snprintf (char*,size_t,char*,char const*) ;

__attribute__((used)) static void
netisr_dispatch_policy_to_string(u_int policy, char *buf,
    size_t buflen)
{
 const char *str;

 switch (policy) {
 case 131:
  str = "default";
  break;
 case 130:
  str = "deferred";
  break;
 case 128:
  str = "hybrid";
  break;
 case 129:
  str = "direct";
  break;
 default:
  str = "unknown";
  break;
 }
 snprintf(buf, buflen, "%s", str);
}
