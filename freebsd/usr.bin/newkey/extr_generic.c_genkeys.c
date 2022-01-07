
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int seed ;
typedef int MINT ;


 unsigned short BASE ;
 int BASEBITS ;
 int HEXMODULUS ;
 int KEYSIZE ;
 short PROOT ;
 int adjust (char*,char*) ;
 int getseed (char*,int,int *) ;
 int * mp_itom (short) ;
 int mp_madd (int *,int *,int *) ;
 int mp_mdiv (int *,int *,int *,int *) ;
 int mp_mfree (int *) ;
 char* mp_mtox (int *) ;
 int mp_mult (int *,int *,int *) ;
 int mp_pow (int *,int *,int *,int *) ;
 int * mp_xtom (int ) ;

void
genkeys(char *public, char *secret, char *pass)
{
 unsigned int i;




 MINT *pk = mp_itom(0);
 MINT *sk = mp_itom(0);
 MINT *tmp;
 MINT *base = mp_itom((short)(1 << (8*sizeof (short) - 1)));
 MINT *root = mp_itom(PROOT);
 MINT *modulus = mp_xtom(HEXMODULUS);
 short r;
 unsigned short seed[KEYSIZE/(8*sizeof (short) - 1) + 1];
 char *xkey;

 getseed((char *)seed, sizeof (seed), (u_char *)pass);
 for (i = 0; i < KEYSIZE/(8*sizeof (short) - 1) + 1; i++) {
  r = seed[i] % (1 << (8*sizeof (short) - 1));
  tmp = mp_itom(r);
  mp_mult(sk, base, sk);
  mp_madd(sk, tmp, sk);
  mp_mfree(tmp);
 }
 tmp = mp_itom(0);
 mp_mdiv(sk, modulus, tmp, sk);
 mp_mfree(tmp);
 mp_pow(root, sk, modulus, pk);
 xkey = mp_mtox(sk);
 adjust(secret, xkey);
 xkey = mp_mtox(pk);
 adjust(public, xkey);
 mp_mfree(sk);
 mp_mfree(base);
 mp_mfree(pk);
 mp_mfree(root);
 mp_mfree(modulus);
}
