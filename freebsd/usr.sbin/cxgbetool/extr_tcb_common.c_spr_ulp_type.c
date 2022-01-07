
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PM_MODE_DDP ;
 unsigned int PM_MODE_DTLS ;
 unsigned int PM_MODE_FCOE ;
 unsigned int PM_MODE_IANDP ;
 unsigned int PM_MODE_ISCSI ;
 unsigned int PM_MODE_IWARP ;
 unsigned int PM_MODE_PASS ;
 unsigned int PM_MODE_RDDP ;
 unsigned int PM_MODE_TLS ;
 unsigned int PM_MODE_USER ;

char *
spr_ulp_type(unsigned ulp_type)
{
  char *ret="UNKNOWN";





  if ( PM_MODE_PASS == ulp_type) {ret = "TOE";}
  else if ( PM_MODE_DDP == ulp_type) {ret = "DDP";}
  else if ( PM_MODE_ISCSI == ulp_type) {ret = "ISCSI";}
  else if ( PM_MODE_IWARP == ulp_type) {ret = "IWARP";}
  else if ( PM_MODE_RDDP == ulp_type) {ret = "RDMA";}
  else if ( PM_MODE_IANDP == ulp_type) {ret = "IANDP_DDP";}
  else if ( PM_MODE_FCOE == ulp_type) {ret = "FCoE";}
  else if ( PM_MODE_USER == ulp_type) {ret = "USER";}
  else if ( PM_MODE_TLS == ulp_type) {ret = "TLS";}
  else if ( PM_MODE_DTLS == ulp_type) {ret = "DTLS";}

  return ret;
}
