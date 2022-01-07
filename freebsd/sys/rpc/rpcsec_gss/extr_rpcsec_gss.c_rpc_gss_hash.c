
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ucred {int cr_uid; } ;
typedef scalar_t__ rpc_gss_service_t ;
typedef TYPE_1__* gss_OID ;
struct TYPE_3__ {int length; int elements; } ;


 int HASHINIT ;
 int HASHSTEP (int,int) ;
 int RPC_GSS_HASH_SIZE ;
 int hash32_buf (int ,int ,int) ;
 int hash32_str (char const*,int) ;

__attribute__((used)) static uint32_t
rpc_gss_hash(const char *principal, gss_OID mech,
    struct ucred *cred, rpc_gss_service_t service)
{
 uint32_t h;

 h = HASHSTEP(HASHINIT, cred->cr_uid);
 h = hash32_str(principal, h);
 h = hash32_buf(mech->elements, mech->length, h);
 h = HASHSTEP(h, (int) service);

 return (h % RPC_GSS_HASH_SIZE);
}
