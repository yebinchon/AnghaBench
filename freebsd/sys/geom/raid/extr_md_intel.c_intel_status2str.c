
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
intel_status2str(int status)
{

 switch (status) {
 case 129:
  return ("READY");
 case 128:
  return ("UNINITIALIZED");
 case 131:
  return ("DEGRADED");
 case 130:
  return ("FAILURE");
 default:
  return ("UNKNOWN");
 }
}
