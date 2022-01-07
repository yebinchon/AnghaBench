
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
isp_fc_loop_statename(int state)
{
 switch (state) {
 case 133: return "NIL";
 case 136: return "Have Link";
 case 137: return "Have Address";
 case 128: return "Testing Link";
 case 134: return "Link Test Done";
 case 130: return "Scanning Loop";
 case 135: return "Loop Scan Done";
 case 131: return "Scanning Fabric";
 case 138: return "Fabric Scan Done";
 case 129: return "Syncing PDB";
 case 132: return "Ready";
 default: return "?????";
 }
}
