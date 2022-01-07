
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ber {int dummy; } ;
typedef int ssize_t ;


 int BER_CLASS_MASK ;
 int BER_CLASS_SHIFT ;
 int BER_TAG_MASK ;
 int BER_TAG_MORE ;
 int BER_TYPE_CONSTRUCTED ;
 int ERANGE ;
 int ber_getc (struct ber*,int*) ;
 int errno ;

__attribute__((used)) static ssize_t
get_id(struct ber *b, unsigned long *tag, int *class, int *cstruct)
{
 u_char u;
 size_t i = 0;
 unsigned long t = 0;

 if (ber_getc(b, &u) == -1)
  return -1;

 *class = (u >> BER_CLASS_SHIFT) & BER_CLASS_MASK;
 *cstruct = (u & BER_TYPE_CONSTRUCTED) == BER_TYPE_CONSTRUCTED;

 if ((u & BER_TAG_MASK) != BER_TAG_MASK) {
  *tag = u & BER_TAG_MASK;
  return 1;
 }

 do {
  if (ber_getc(b, &u) == -1)
   return -1;
  t = (t << 7) | (u & ~BER_TAG_MORE);
  i++;
 } while (u & BER_TAG_MORE);

 if (i > sizeof(unsigned long)) {
  errno = ERANGE;
  return -1;
 }

 *tag = t;
 return i + 1;
}
