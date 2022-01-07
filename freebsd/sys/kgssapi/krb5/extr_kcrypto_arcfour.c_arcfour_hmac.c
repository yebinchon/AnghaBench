
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int MD5_CTX ;


 int MD5Final (int*,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,int*,int) ;

__attribute__((used)) static void
arcfour_hmac(uint8_t *key, uint8_t *data, size_t datalen,
 uint8_t *result)
{
 uint8_t buf[64];
 MD5_CTX md5;
 int i;

 for (i = 0; i < 16; i++)
  buf[i] = key[i] ^ 0x36;
 for (; i < 64; i++)
  buf[i] = 0x36;

 MD5Init(&md5);
 MD5Update(&md5, buf, 64);
 MD5Update(&md5, data, datalen);
 MD5Final(result, &md5);

 for (i = 0; i < 16; i++)
  buf[i] = key[i] ^ 0x5c;
 for (; i < 64; i++)
  buf[i] = 0x5c;

 MD5Init(&md5);
 MD5Update(&md5, buf, 64);
 MD5Update(&md5, result, 16);
 MD5Final(result, &md5);
}
