
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be16 ;
__attribute__((used)) static char * get_sa_attr(__be16 attr)
{
 switch(attr) {
 case 149:
  return "Class Port Info";
 case 139:
  return "Notice";
 case 147:
  return "Inform Info";
 case 140:
  return "Node Record";
 case 136:
  return "PortInfo Record";
 case 132:
  return "SL to VL Record";
 case 130:
  return "Switch Record";
 case 145:
  return "Linear FDB Record";
 case 135:
  return "Random FDB Record";
 case 143:
  return "Multicast FDB Record";
 case 131:
  return "SM Info Record";
 case 144:
  return "Link Record";
 case 148:
  return "Guid Info Record";
 case 133:
  return "Service Record";
 case 138:
  return "Partition Record";
 case 137:
  return "Path Record";
 case 128:
  return "VL Arb Record";
 case 142:
  return "MC Member Record";
 case 129:
  return "Trace Record";
 case 141:
  return "Multi Path Record";
 case 134:
  return "Service Assoc Record";
 case 146:
  return "Inform Info Record";
 default:
  return "";
 }
}
