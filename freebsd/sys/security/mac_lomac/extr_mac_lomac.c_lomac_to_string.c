
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct mac_lomac {int ml_flags; int ml_rangehigh; int ml_rangelow; int ml_auxsingle; int ml_single; } ;


 int EINVAL ;
 int MAC_LOMAC_FLAG_AUX ;
 int MAC_LOMAC_FLAG_RANGE ;
 int MAC_LOMAC_FLAG_SINGLE ;
 int lomac_element_to_string (struct sbuf*,int *) ;
 int sbuf_putc (struct sbuf*,char) ;

__attribute__((used)) static int
lomac_to_string(struct sbuf *sb, struct mac_lomac *ml)
{

 if (ml->ml_flags & MAC_LOMAC_FLAG_SINGLE) {
  if (lomac_element_to_string(sb, &ml->ml_single) == -1)
   return (EINVAL);
 }

 if (ml->ml_flags & MAC_LOMAC_FLAG_AUX) {
  if (sbuf_putc(sb, '[') == -1)
   return (EINVAL);

  if (lomac_element_to_string(sb, &ml->ml_auxsingle) == -1)
   return (EINVAL);

  if (sbuf_putc(sb, ']') == -1)
   return (EINVAL);
 }

 if (ml->ml_flags & MAC_LOMAC_FLAG_RANGE) {
  if (sbuf_putc(sb, '(') == -1)
   return (EINVAL);

  if (lomac_element_to_string(sb, &ml->ml_rangelow) == -1)
   return (EINVAL);

  if (sbuf_putc(sb, '-') == -1)
   return (EINVAL);

  if (lomac_element_to_string(sb, &ml->ml_rangehigh) == -1)
   return (EINVAL);

  if (sbuf_putc(sb, ')') == -1)
   return (EINVAL);
 }

 return (0);
}
