
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct mac_biba {int mb_flags; int mb_rangehigh; int mb_rangelow; int mb_effective; } ;


 int EINVAL ;
 int MAC_BIBA_FLAG_EFFECTIVE ;
 int MAC_BIBA_FLAG_RANGE ;
 int biba_element_to_string (struct sbuf*,int *) ;
 int sbuf_putc (struct sbuf*,char) ;

__attribute__((used)) static int
biba_to_string(struct sbuf *sb, struct mac_biba *mb)
{

 if (mb->mb_flags & MAC_BIBA_FLAG_EFFECTIVE) {
  if (biba_element_to_string(sb, &mb->mb_effective) == -1)
   return (EINVAL);
 }

 if (mb->mb_flags & MAC_BIBA_FLAG_RANGE) {
  if (sbuf_putc(sb, '(') == -1)
   return (EINVAL);

  if (biba_element_to_string(sb, &mb->mb_rangelow) == -1)
   return (EINVAL);

  if (sbuf_putc(sb, '-') == -1)
   return (EINVAL);

  if (biba_element_to_string(sb, &mb->mb_rangehigh) == -1)
   return (EINVAL);

  if (sbuf_putc(sb, ')') == -1)
   return (EINVAL);
 }

 return (0);
}
