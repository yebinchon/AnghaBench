
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {scalar_t__ sa_family; } ;
struct TYPE_3__ {TYPE_2__ sa; } ;
struct sctp_ifa {int localifa_flags; scalar_t__ src_is_priv; scalar_t__ src_is_loop; scalar_t__ src_is_glob; TYPE_1__ address; } ;
typedef scalar_t__ sa_family_t ;


 scalar_t__ AF_INET6 ;
 int SCTPDBG (int ,char*,...) ;
 int SCTPDBG_ADDR (int ,TYPE_2__*) ;
 int SCTP_ADDR_IFA_UNUSEABLE ;
 int SCTP_DEBUG_OUTPUT2 ;
 int SCTP_DEBUG_OUTPUT3 ;

__attribute__((used)) static struct sctp_ifa *
sctp_is_ifa_addr_preferred(struct sctp_ifa *ifa,
    uint8_t dest_is_loop,
    uint8_t dest_is_priv,
    sa_family_t fam)
{
 uint8_t dest_is_global = 0;
 if (ifa->address.sa.sa_family != fam) {

  return (((void*)0));
 }
 if ((dest_is_priv == 0) && (dest_is_loop == 0)) {
  dest_is_global = 1;
 }
 SCTPDBG(SCTP_DEBUG_OUTPUT2, "Is destination preferred:");
 SCTPDBG_ADDR(SCTP_DEBUG_OUTPUT2, &ifa->address.sa);
 SCTPDBG(SCTP_DEBUG_OUTPUT3, "src_loop:%d src_priv:%d src_glob:%d\n",
     ifa->src_is_loop, ifa->src_is_priv, ifa->src_is_glob);
 SCTPDBG(SCTP_DEBUG_OUTPUT3, "dest_loop:%d dest_priv:%d dest_glob:%d\n",
     dest_is_loop, dest_is_priv, dest_is_global);

 if ((ifa->src_is_loop) && (dest_is_priv)) {
  SCTPDBG(SCTP_DEBUG_OUTPUT3, "NO:4\n");
  return (((void*)0));
 }
 if ((ifa->src_is_glob) && (dest_is_priv)) {
  SCTPDBG(SCTP_DEBUG_OUTPUT3, "NO:5\n");
  return (((void*)0));
 }
 if ((ifa->src_is_loop) && (dest_is_global)) {
  SCTPDBG(SCTP_DEBUG_OUTPUT3, "NO:6\n");
  return (((void*)0));
 }
 if ((ifa->src_is_priv) && (dest_is_global)) {
  SCTPDBG(SCTP_DEBUG_OUTPUT3, "NO:7\n");
  return (((void*)0));
 }
 SCTPDBG(SCTP_DEBUG_OUTPUT3, "YES\n");

 return (ifa);
}
