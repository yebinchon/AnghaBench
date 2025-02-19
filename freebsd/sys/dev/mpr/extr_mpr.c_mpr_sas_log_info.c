
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpr_softc {int dummy; } ;


 int MPR_LOG ;
 int mpr_dprint (struct mpr_softc*,int ,char*,int,char*,int,int) ;

__attribute__((used)) static void
mpr_sas_log_info(struct mpr_softc *sc , u32 log_info)
{
 union loginfo_type {
  u32 loginfo;
  struct {
   u32 subcode:16;
   u32 code:8;
   u32 originator:4;
   u32 bus_type:4;
  } dw;
 };
 union loginfo_type sas_loginfo;
 char *originator_str = ((void*)0);

 sas_loginfo.loginfo = log_info;
 if (sas_loginfo.dw.bus_type != 3 )
  return;


 if (log_info == 0x31170000)
  return;


 if ((log_info == 30050000) || (log_info == 0x31140000) ||
     (log_info == 0x31130000))
  return;

 switch (sas_loginfo.dw.originator) {
 case 0:
  originator_str = "IOP";
  break;
 case 1:
  originator_str = "PL";
  break;
 case 2:
  originator_str = "IR";
  break;
 }

 mpr_dprint(sc, MPR_LOG, "log_info(0x%08x): originator(%s), "
     "code(0x%02x), sub_code(0x%04x)\n", log_info, originator_str,
     sas_loginfo.dw.code, sas_loginfo.dw.subcode);
}
