
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
isp_fc_fw_statename(int state)
{
 switch (state) {
 case 135: return "Config Wait";
 case 129: return "Wait Link";
 case 128: return "Wait Login";
 case 131: return "Ready";
 case 133: return "Loss Of Sync";
 case 134: return "Error";
 case 130: return "Re-Init";
 case 132: return "Nonparticipating";
 default: return "?????";
 }
}
