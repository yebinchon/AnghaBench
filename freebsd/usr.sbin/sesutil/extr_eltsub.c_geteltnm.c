
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rbuf ;
 int snprintf (char*,int,char*,int) ;

const char *
geteltnm(int type)
{
 static char rbuf[132];

 switch (type) {
 case 130:
  return ("Unspecified");
 case 149:
  return ("Device Slot");
 case 139:
  return ("Power Supply");
 case 144:
  return ("Cooling");
 case 131:
  return ("Temperature Sensors");
 case 147:
  return ("Door Lock");
 case 153:
  return ("Audible alarm");
 case 145:
  return ("Enclosure Services Controller Electronics");
 case 136:
  return ("SCC Controller Electronics");
 case 140:
  return ("Nonvolatile Cache");
 case 143:
  return ("Invalid Operation Reason");
 case 129:
  return ("Uninterruptible Power Supply");
 case 148:
  return ("Display");
 case 142:
  return ("Key Pad Entry");
 case 146:
  return ("Enclosure");
 case 135:
  return ("SCSI Port/Transceiver");
 case 141:
  return ("Language");
 case 150:
  return ("Communication Port");
 case 128:
  return ("Voltage Sensor");
 case 152:
  return ("Current Sensor");
 case 133:
  return ("SCSI Target Port");
 case 134:
  return ("SCSI Initiator Port");
 case 132:
  return ("Simple Subenclosure");
 case 151:
  return ("Array Device Slot");
 case 137:
  return ("SAS Expander");
 case 138:
  return ("SAS Connector");
 default:
  snprintf(rbuf, sizeof(rbuf), "<Type 0x%x>", type);
  return (rbuf);
 }
}
