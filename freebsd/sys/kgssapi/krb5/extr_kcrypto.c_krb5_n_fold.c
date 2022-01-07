
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int M_GSSAPI ;
 int M_WAITOK ;
 int bcopy (int const*,int *,size_t) ;
 int bzero (int *,size_t) ;
 int free (int *,int ) ;
 int krb5_ones_complement_add (int *,int *,size_t) ;
 int krb5_rotate_right_13 (int *,int *,size_t) ;
 size_t lcm (size_t,size_t) ;
 int * malloc (size_t,int ,int ) ;

__attribute__((used)) static void
krb5_n_fold(uint8_t *out, size_t outlen, const uint8_t *in, size_t inlen)
{
 size_t tmplen;
 uint8_t *tmp;
 size_t i;
 uint8_t *p;

 tmplen = lcm(inlen, outlen);
 tmp = malloc(tmplen, M_GSSAPI, M_WAITOK);

 bcopy(in, tmp, inlen);
 for (i = inlen, p = tmp; i < tmplen; i += inlen, p += inlen) {
  krb5_rotate_right_13(p + inlen, p, inlen);
 }
 bzero(out, outlen);
 for (i = 0, p = tmp; i < tmplen; i += outlen, p += outlen) {
  krb5_ones_complement_add(out, p, outlen);
 }
 free(tmp, M_GSSAPI);
}
