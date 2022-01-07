
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static const char* grc_timeout_attn_master_to_str(u8 master)
{
 switch(master) {
 case 1: return "PXP";
 case 2: return "MCP";
 case 3: return "MSDM";
 case 4: return "PSDM";
 case 5: return "YSDM";
 case 6: return "USDM";
 case 7: return "TSDM";
 case 8: return "XSDM";
 case 9: return "DBU";
 case 10: return "DMAE";
 default:
  return "Unkown";
 }
}
