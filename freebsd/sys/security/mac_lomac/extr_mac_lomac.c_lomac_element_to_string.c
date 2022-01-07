
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct mac_lomac_element {int mle_type; int mle_grade; } ;






 int panic (char*,int) ;
 int sbuf_printf (struct sbuf*,char*,...) ;

__attribute__((used)) static int
lomac_element_to_string(struct sbuf *sb, struct mac_lomac_element *element)
{

 switch (element->mle_type) {
 case 129:
  return (sbuf_printf(sb, "high"));

 case 128:
  return (sbuf_printf(sb, "low"));

 case 131:
  return (sbuf_printf(sb, "equal"));

 case 130:
  return (sbuf_printf(sb, "%d", element->mle_grade));

 default:
  panic("lomac_element_to_string: invalid type (%d)",
      element->mle_type);
 }
}
