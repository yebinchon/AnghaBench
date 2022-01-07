
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session_conf {char* isc_initiator; char* isc_target_addr; scalar_t__ isc_discovery; scalar_t__* isc_target; } ;


 int ISCSI_DEBUG (char*) ;

__attribute__((used)) static bool
iscsi_valid_session_conf(const struct iscsi_session_conf *isc)
{

 if (isc->isc_initiator[0] == '\0') {
  ISCSI_DEBUG("empty isc_initiator");
  return (0);
 }

 if (isc->isc_target_addr[0] == '\0') {
  ISCSI_DEBUG("empty isc_target_addr");
  return (0);
 }

 if (isc->isc_discovery != 0 && isc->isc_target[0] != 0) {
  ISCSI_DEBUG("non-empty isc_target for discovery session");
  return (0);
 }

 if (isc->isc_discovery == 0 && isc->isc_target[0] == 0) {
  ISCSI_DEBUG("empty isc_target for non-discovery session");
  return (0);
 }

 return (1);
}
