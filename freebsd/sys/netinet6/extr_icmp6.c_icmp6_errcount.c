
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ICMP6STAT_INC (int ) ;
 int icp6s_odst_unreach_addr ;
 int icp6s_odst_unreach_admin ;
 int icp6s_odst_unreach_beyondscope ;
 int icp6s_odst_unreach_noport ;
 int icp6s_odst_unreach_noroute ;
 int icp6s_opacket_too_big ;
 int icp6s_oparamprob_header ;
 int icp6s_oparamprob_nextheader ;
 int icp6s_oparamprob_option ;
 int icp6s_oredirect ;
 int icp6s_otime_exceed_reassembly ;
 int icp6s_otime_exceed_transit ;
 int icp6s_ounknown ;

__attribute__((used)) static void
icmp6_errcount(int type, int code)
{
 switch (type) {
 case 142:
  switch (code) {
  case 137:
   ICMP6STAT_INC(icp6s_odst_unreach_noroute);
   return;
  case 140:
   ICMP6STAT_INC(icp6s_odst_unreach_admin);
   return;
  case 139:
   ICMP6STAT_INC(icp6s_odst_unreach_beyondscope);
   return;
  case 141:
   ICMP6STAT_INC(icp6s_odst_unreach_addr);
   return;
  case 138:
   ICMP6STAT_INC(icp6s_odst_unreach_noport);
   return;
  }
  break;
 case 136:
  ICMP6STAT_INC(icp6s_opacket_too_big);
  return;
 case 131:
  switch (code) {
  case 129:
   ICMP6STAT_INC(icp6s_otime_exceed_transit);
   return;
  case 130:
   ICMP6STAT_INC(icp6s_otime_exceed_reassembly);
   return;
  }
  break;
 case 132:
  switch (code) {
  case 135:
   ICMP6STAT_INC(icp6s_oparamprob_header);
   return;
  case 134:
   ICMP6STAT_INC(icp6s_oparamprob_nextheader);
   return;
  case 133:
   ICMP6STAT_INC(icp6s_oparamprob_option);
   return;
  }
  break;
 case 128:
  ICMP6STAT_INC(icp6s_oredirect);
  return;
 }
 ICMP6STAT_INC(icp6s_ounknown);
}
