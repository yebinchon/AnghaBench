
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_int32_t ;
struct svc_rpc_gss_client {scalar_t__ cl_seqlast; int* cl_seqmask; int cl_lock; } ;
typedef int bool_t ;


 int FALSE ;
 int SVC_RPC_GSS_SEQWINDOW ;
 int TRUE ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static bool_t
svc_rpc_gss_check_replay(struct svc_rpc_gss_client *client, uint32_t seq)
{
 u_int32_t offset;
 int word, bit;
 bool_t result;

 sx_xlock(&client->cl_lock);
 if (seq <= client->cl_seqlast) {







  offset = client->cl_seqlast - seq;
  if (offset >= SVC_RPC_GSS_SEQWINDOW) {
   result = FALSE;
   goto out;
  }
  word = offset / 32;
  bit = offset % 32;
  if (client->cl_seqmask[word] & (1 << bit)) {
   result = FALSE;
   goto out;
  }
 }

 result = TRUE;
out:
 sx_xunlock(&client->cl_lock);
 return (result);
}
