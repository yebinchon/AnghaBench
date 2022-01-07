
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union randomdev_key {int key; int cipher; int chacha; } ;


 int DIR_ENCRYPT ;
 int MODE_ECB ;
 int RANDOM_KEYSIZE ;
 int chacha_keysetup (int *,void const*,int) ;
 scalar_t__ random_chachamode ;
 int rijndael_cipherInit (int *,int ,int *) ;
 int rijndael_makeKey (int *,int ,int,void const*) ;

void
randomdev_encrypt_init(union randomdev_key *context, const void *data)
{

 if (random_chachamode) {
  chacha_keysetup(&context->chacha, data, RANDOM_KEYSIZE * 8);
 } else {
  rijndael_cipherInit(&context->cipher, MODE_ECB, ((void*)0));
  rijndael_makeKey(&context->key, DIR_ENCRYPT, RANDOM_KEYSIZE*8, data);
 }
}
