
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val32 ;
typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int seed ;
typedef int nullbuf ;
typedef int ctxt ;
typedef int MD5_CTX ;


 int EUI64_UBIT ;
 int LOG_INFO ;
 int MD5Final (int*,int*) ;
 int MD5Init (int*) ;
 int MD5Update (int*,int*,int) ;
 int arc4random () ;
 scalar_t__ bcmp (int*,int*,int) ;
 int bcopy (int const*,int*,int) ;
 int bzero (int*,int) ;
 int nd6log (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static int
generate_tmp_ifid(u_int8_t *seed0, const u_int8_t *seed1, u_int8_t *ret)
{
 MD5_CTX ctxt;
 u_int8_t seed[16], digest[16], nullbuf[8];
 u_int32_t val32;


 bzero(nullbuf, sizeof(nullbuf));
 if (bcmp(nullbuf, seed0, sizeof(nullbuf)) == 0) {
  int i;

  for (i = 0; i < 2; i++) {
   val32 = arc4random();
   bcopy(&val32, seed + sizeof(val32) * i, sizeof(val32));
  }
 } else
  bcopy(seed0, seed, 8);



 bcopy(seed1, &seed[8], 8);

 if (0) {
  int i;

  printf("generate_tmp_ifid: new randomized ID from: ");
  for (i = 0; i < 16; i++)
   printf("%02x", seed[i]);
  printf(" ");
 }


 bzero(&ctxt, sizeof(ctxt));
 MD5Init(&ctxt);
 MD5Update(&ctxt, seed, sizeof(seed));
 MD5Final(digest, &ctxt);






 bcopy(digest, ret, 8);
 ret[0] &= ~EUI64_UBIT;






 if (bcmp(nullbuf, ret, sizeof(nullbuf)) == 0) {
  nd6log((LOG_INFO,
      "generate_tmp_ifid: computed MD5 value is zero.\n"));

  val32 = arc4random();
  val32 = 1 + (val32 % (0xffffffff - 1));
 }







 bcopy(&digest[8], seed0, 8);

 if (0) {
  int i;

  printf("to: ");
  for (i = 0; i < 16; i++)
   printf("%02x", digest[i]);
  printf("\n");
 }

 return 0;
}
