
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int service; } ;
struct svc_rpc_gss_client {int cl_rpcflavor; TYPE_1__ cl_rawcred; int cl_mech; } ;
struct TYPE_5__ {int member_0; void* member_1; } ;
typedef TYPE_2__ gss_OID_desc ;


 int RPCSEC_GSS ;
 int RPCSEC_GSS_KRB5 ;
 int RPCSEC_GSS_KRB5I ;
 int RPCSEC_GSS_KRB5P ;
 scalar_t__ kgss_oid_equal (int ,TYPE_2__*) ;





__attribute__((used)) static void
svc_rpc_gss_set_flavor(struct svc_rpc_gss_client *client)
{
 static gss_OID_desc krb5_mech_oid =
  {9, (void *) "\x2a\x86\x48\x86\xf7\x12\x01\x02\x02" };





 if (kgss_oid_equal(client->cl_mech, &krb5_mech_oid)) {
  switch (client->cl_rawcred.service) {
  case 131:
  case 129:
   client->cl_rpcflavor = RPCSEC_GSS_KRB5;
   break;
  case 130:
   client->cl_rpcflavor = RPCSEC_GSS_KRB5I;
   break;
  case 128:
   client->cl_rpcflavor = RPCSEC_GSS_KRB5P;
   break;
  }
 } else {
  client->cl_rpcflavor = RPCSEC_GSS;
 }
}
