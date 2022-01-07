
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct krb5_msg_order {int km_flags; int km_length; scalar_t__* km_elem; } ;
struct krb5_context {int kc_lock; struct krb5_msg_order kc_msg_order; } ;
typedef int OM_uint32 ;


 int GSS_C_REPLAY_FLAG ;
 int GSS_C_SEQUENCE_FLAG ;
 int GSS_S_COMPLETE ;
 int GSS_S_DUPLICATE_TOKEN ;
 int GSS_S_FAILURE ;
 int GSS_S_GAP_TOKEN ;
 int GSS_S_OLD_TOKEN ;
 int GSS_S_UNSEQ_TOKEN ;
 int krb5_insert_seq (struct krb5_msg_order*,scalar_t__,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static OM_uint32
krb5_sequence_check(struct krb5_context *kc, uint32_t seq)
{
 OM_uint32 res = GSS_S_FAILURE;
 struct krb5_msg_order *mo = &kc->kc_msg_order;
 int check_sequence = mo->km_flags & GSS_C_SEQUENCE_FLAG;
 int check_replay = mo->km_flags & GSS_C_REPLAY_FLAG;
 int i;

 mtx_lock(&kc->kc_lock);




 if (mo->km_length == 0 || seq == mo->km_elem[0] + 1) {



  krb5_insert_seq(mo, seq, 0);
  res = GSS_S_COMPLETE;
  goto out;
 }

 if (seq > mo->km_elem[0]) {



  krb5_insert_seq(mo, seq, 0);
  if (check_sequence)
   res = GSS_S_GAP_TOKEN;
  else
   res = GSS_S_COMPLETE;
  goto out;
 }

 if (seq < mo->km_elem[mo->km_length - 1]) {
  if (check_replay && !check_sequence)
   res = GSS_S_OLD_TOKEN;
  else
   res = GSS_S_UNSEQ_TOKEN;
  goto out;
 }

 for (i = 0; i < mo->km_length; i++) {
  if (mo->km_elem[i] == seq) {
   res = GSS_S_DUPLICATE_TOKEN;
   goto out;
  }
  if (mo->km_elem[i] < seq) {



   krb5_insert_seq(mo, seq, i);
   if (check_replay && !check_sequence)
    res = GSS_S_COMPLETE;
   else
    res = GSS_S_UNSEQ_TOKEN;
   goto out;
  }
 }

out:
 mtx_unlock(&kc->kc_lock);

 return (res);
}
