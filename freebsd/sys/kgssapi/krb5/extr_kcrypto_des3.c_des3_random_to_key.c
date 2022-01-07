
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct krb5_key_state {int* ks_key; } ;


 int des3_set_key (struct krb5_key_state*,int*) ;
 scalar_t__ des_is_weak_key (int*) ;
 int des_set_odd_parity (int*) ;

__attribute__((used)) static void
des3_random_to_key(struct krb5_key_state *ks, const void *in)
{
 uint8_t *outkey;
 const uint8_t *inkey;
 int subkey;

 for (subkey = 0, outkey = ks->ks_key, inkey = in; subkey < 3;
      subkey++, outkey += 8, inkey += 7) {
  outkey[0] = inkey[0];
  outkey[1] = inkey[1];
  outkey[2] = inkey[2];
  outkey[3] = inkey[3];
  outkey[4] = inkey[4];
  outkey[5] = inkey[5];
  outkey[6] = inkey[6];
  outkey[7] = (((inkey[0] & 1) << 1)
      | ((inkey[1] & 1) << 2)
      | ((inkey[2] & 1) << 3)
      | ((inkey[3] & 1) << 4)
      | ((inkey[4] & 1) << 5)
      | ((inkey[5] & 1) << 6)
      | ((inkey[6] & 1) << 7));
  des_set_odd_parity(outkey);
  if (des_is_weak_key(outkey))
   outkey[7] ^= 0xf0;
 }

 des3_set_key(ks, ks->ks_key);
}
