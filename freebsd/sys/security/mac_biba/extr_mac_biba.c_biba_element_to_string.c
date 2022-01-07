
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct mac_biba_element {int mbe_type; int mbe_grade; int mbe_compartments; } ;


 int MAC_BIBA_BIT_TEST (int,int ) ;
 int MAC_BIBA_MAX_COMPARTMENTS ;




 int panic (char*,int) ;
 int sbuf_printf (struct sbuf*,char*,...) ;
 int sbuf_putc (struct sbuf*,char) ;

__attribute__((used)) static int
biba_element_to_string(struct sbuf *sb, struct mac_biba_element *element)
{
 int i, first;

 switch (element->mbe_type) {
 case 129:
  return (sbuf_printf(sb, "high"));

 case 128:
  return (sbuf_printf(sb, "low"));

 case 131:
  return (sbuf_printf(sb, "equal"));

 case 130:
  if (sbuf_printf(sb, "%d", element->mbe_grade) == -1)
   return (-1);

  first = 1;
  for (i = 1; i <= MAC_BIBA_MAX_COMPARTMENTS; i++) {
   if (MAC_BIBA_BIT_TEST(i, element->mbe_compartments)) {
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
  panic("biba_element_to_string: invalid type (%d)",
      element->mbe_type);
 }
}
