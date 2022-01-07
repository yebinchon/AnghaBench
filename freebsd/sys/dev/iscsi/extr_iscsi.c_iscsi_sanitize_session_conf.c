
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session_conf {char* isc_initiator; char* isc_initiator_addr; char* isc_initiator_alias; char* isc_target; char* isc_target_addr; char* isc_user; char* isc_secret; char* isc_mutual_user; char* isc_mutual_secret; } ;


 int ISCSI_ADDR_LEN ;
 int ISCSI_ALIAS_LEN ;
 int ISCSI_NAME_LEN ;
 int ISCSI_SECRET_LEN ;

__attribute__((used)) static void
iscsi_sanitize_session_conf(struct iscsi_session_conf *isc)
{







 isc->isc_initiator[ISCSI_NAME_LEN - 1] = '\0';
 isc->isc_initiator_addr[ISCSI_ADDR_LEN - 1] = '\0';
 isc->isc_initiator_alias[ISCSI_ALIAS_LEN - 1] = '\0';
 isc->isc_target[ISCSI_NAME_LEN - 1] = '\0';
 isc->isc_target_addr[ISCSI_ADDR_LEN - 1] = '\0';
 isc->isc_user[ISCSI_NAME_LEN - 1] = '\0';
 isc->isc_secret[ISCSI_SECRET_LEN - 1] = '\0';
 isc->isc_mutual_user[ISCSI_NAME_LEN - 1] = '\0';
 isc->isc_mutual_secret[ISCSI_SECRET_LEN - 1] = '\0';
}
