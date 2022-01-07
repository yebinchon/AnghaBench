
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
intel_mt2str(int type)
{

 switch (type) {
 case 132:
  return ("INIT");
 case 131:
  return ("REBUILD");
 case 128:
  return ("VERIFY");
 case 133:
  return ("GEN_MIGR");
 case 129:
  return ("STATE_CHANGE");
 case 130:
  return ("REPAIR");
 default:
  return ("UNKNOWN");
 }
}
