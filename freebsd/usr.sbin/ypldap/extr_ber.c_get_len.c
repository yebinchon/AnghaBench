
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ber {int dummy; } ;
typedef int ssize_t ;


 int BER_TAG_MORE ;
 int EINVAL ;
 int ERANGE ;
 int ber_getc (struct ber*,int*) ;
 int errno ;

__attribute__((used)) static ssize_t
get_len(struct ber *b, ssize_t *len)
{
 u_char u, n;
 ssize_t s, r;

 if (ber_getc(b, &u) == -1)
  return -1;
 if ((u & BER_TAG_MORE) == 0) {

  *len = u;
  return 1;
 }

 n = u & ~BER_TAG_MORE;
 if (sizeof(ssize_t) < n) {
  errno = ERANGE;
  return -1;
 }
 r = n + 1;

 for (s = 0; n > 0; n--) {
  if (ber_getc(b, &u) == -1)
   return -1;
  s = (s << 8) | u;
 }

 if (s < 0) {

  errno = ERANGE;
  return -1;
 }

 if (s == 0) {

  errno = EINVAL;
  return -1;
 }

 *len = s;
 return r;
}
