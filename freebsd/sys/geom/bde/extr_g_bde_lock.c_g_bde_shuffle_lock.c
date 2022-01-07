
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
typedef size_t u_char ;


 size_t NLOCK_FIELDS ;
 size_t SHA512_DIGEST_LENGTH ;

__attribute__((used)) static void
g_bde_shuffle_lock(u_char *sha2, int *buf)
{
 int j, k, l;
 u_int u;


 for(u = 0; u < NLOCK_FIELDS; u++)
  buf[u] = u;


 for(u = 48; u < SHA512_DIGEST_LENGTH; u++) {
  j = sha2[u] % NLOCK_FIELDS;
  k = (sha2[u] / NLOCK_FIELDS) % NLOCK_FIELDS;
  l = buf[j];
  buf[j] = buf[k];
  buf[k] = l;
 }
}
