
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct svc_rpc_gss_client {scalar_t__ cl_seqlast; int* cl_seqmask; int cl_lock; } ;


 int SVC_RPC_GSS_SEQWINDOW ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
svc_rpc_gss_update_seq(struct svc_rpc_gss_client *client, uint32_t seq)
{
 int offset, i, word, bit;
 uint32_t carry, newcarry;

 sx_xlock(&client->cl_lock);
 if (seq > client->cl_seqlast) {







  offset = seq - client->cl_seqlast;
  while (offset > 32) {
   for (i = (SVC_RPC_GSS_SEQWINDOW / 32) - 1;
        i > 0; i--) {
    client->cl_seqmask[i] = client->cl_seqmask[i-1];
   }
   client->cl_seqmask[0] = 0;
   offset -= 32;
  }
  carry = 0;
  for (i = 0; i < SVC_RPC_GSS_SEQWINDOW / 32; i++) {
   newcarry = client->cl_seqmask[i] >> (32 - offset);
   client->cl_seqmask[i] =
    (client->cl_seqmask[i] << offset) | carry;
   carry = newcarry;
  }
  client->cl_seqmask[0] |= 1;
  client->cl_seqlast = seq;
 } else {
  offset = client->cl_seqlast - seq;
  word = offset / 32;
  bit = offset % 32;
  client->cl_seqmask[word] |= (1 << bit);
 }
 sx_xunlock(&client->cl_lock);
}
