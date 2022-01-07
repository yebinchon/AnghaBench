
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct krb5_msg_order {int km_length; int km_jitter_window; int * km_elem; } ;



__attribute__((used)) static void
krb5_insert_seq(struct krb5_msg_order *mo, uint32_t seq, int index)
{
 int i;

 if (mo->km_length < mo->km_jitter_window)
  mo->km_length++;

 for (i = mo->km_length - 1; i > index; i--)
  mo->km_elem[i] = mo->km_elem[i - 1];
 mo->km_elem[index] = seq;
}
