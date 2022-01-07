
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct mac_mls_element {int mme_type; int mme_level; int mme_compartments; } ;


 int MAC_MLS_BIT_TEST (int,int ) ;
 int MAC_MLS_MAX_COMPARTMENTS ;




 int panic (char*,int) ;
 int sbuf_printf (struct sbuf*,char*,...) ;
 int sbuf_putc (struct sbuf*,char) ;

__attribute__((used)) static int
mls_element_to_string(struct sbuf *sb, struct mac_mls_element *element)
{
 int i, first;

 switch (element->mme_type) {
 case 130:
  return (sbuf_printf(sb, "high"));

 case 128:
  return (sbuf_printf(sb, "low"));

 case 131:
  return (sbuf_printf(sb, "equal"));

 case 129:
  if (sbuf_printf(sb, "%d", element->mme_level) == -1)
   return (-1);

  first = 1;
  for (i = 1; i <= MAC_MLS_MAX_COMPARTMENTS; i++) {
   if (MAC_MLS_BIT_TEST(i, element->mme_compartments)) {
    if (first) {
     if (sbuf_putc(sb, ':') == -1)
      return (-1);
     if (sbuf_printf(sb, "%d", i) == -1)
      return (-1);
     first = 0;
    } else {
     if (sbuf_printf(sb, "+%d", i) == -1)
      return (-1);
    }
   }
  }
  return (0);

 default:
  panic("mls_element_to_string: invalid type (%d)",
      element->mme_type);
 }
}
