
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be16 ;
__attribute__((used)) static char * get_smp_attr(__be16 attr)
{
 switch (attr) {
 case 136:
  return "notice";
 case 138:
  return "node description";
 case 137:
  return "node info";
 case 130:
  return "switch info";
 case 142:
  return "GUID info";
 case 134:
  return "port info";
 case 135:
  return "pkey table";
 case 132:
  return "SL to VL table";
 case 128:
  return "VL arbitration table";
 case 140:
  return "linear forwarding table";
 case 133:
  return "random forward table";
 case 139:
  return "multicast forward table";
 case 131:
  return "SM info";
 case 129:
  return "vendor diags";
 case 141:
  return "LED info";
 default:
  return "";
 }
}
