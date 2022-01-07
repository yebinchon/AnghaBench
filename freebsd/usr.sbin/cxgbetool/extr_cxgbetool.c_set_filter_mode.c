
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CHELSIO_T4_SET_FILTER_MODE ;
 int EINVAL ;
 int T4_FILTER_ETH_TYPE ;
 int T4_FILTER_FCoE ;
 int T4_FILTER_IC_VNIC ;
 int T4_FILTER_IP_FRAGMENT ;
 int T4_FILTER_IP_PROTO ;
 int T4_FILTER_IP_TOS ;
 int T4_FILTER_MAC_IDX ;
 int T4_FILTER_MPS_HIT_TYPE ;
 int T4_FILTER_PORT ;
 int T4_FILTER_VLAN ;
 int T4_FILTER_VNIC ;
 int doit (int ,int *) ;
 int strcmp (char const*,char*) ;
 int warnx (char*) ;

__attribute__((used)) static int
set_filter_mode(int argc, const char *argv[])
{
 uint32_t mode = 0;
 int vnic = 0, ovlan = 0;

 for (; argc; argc--, argv++) {
  if (!strcmp(argv[0], "frag"))
   mode |= T4_FILTER_IP_FRAGMENT;

  if (!strcmp(argv[0], "matchtype"))
   mode |= T4_FILTER_MPS_HIT_TYPE;

  if (!strcmp(argv[0], "macidx"))
   mode |= T4_FILTER_MAC_IDX;

  if (!strcmp(argv[0], "ethtype"))
   mode |= T4_FILTER_ETH_TYPE;

  if (!strcmp(argv[0], "proto"))
   mode |= T4_FILTER_IP_PROTO;

  if (!strcmp(argv[0], "tos"))
   mode |= T4_FILTER_IP_TOS;

  if (!strcmp(argv[0], "vlan"))
   mode |= T4_FILTER_VLAN;

  if (!strcmp(argv[0], "ovlan")) {
   mode |= T4_FILTER_VNIC;
   ovlan++;
  }

  if (!strcmp(argv[0], "vnic_id")) {
   mode |= T4_FILTER_VNIC;
   mode |= T4_FILTER_IC_VNIC;
   vnic++;
  }

  if (!strcmp(argv[0], "iport"))
   mode |= T4_FILTER_PORT;

  if (!strcmp(argv[0], "fcoe"))
   mode |= T4_FILTER_FCoE;
 }

 if (vnic > 0 && ovlan > 0) {
  warnx("\"vnic_id\" and \"ovlan\" are mutually exclusive.");
  return (EINVAL);
 }

 return doit(CHELSIO_T4_SET_FILTER_MODE, &mode);
}
