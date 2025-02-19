
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct ber_element {long long be_numeric; int be_len; } ;


 int BER_TYPE_INTEGER ;
 struct ber_element* ber_get_element (int ) ;
 int ber_link_elements (struct ber_element*,struct ber_element*) ;

struct ber_element *
ber_add_integer(struct ber_element *prev, long long val)
{
 struct ber_element *elm;
 u_int i, len = 0;
 u_char cur, last = 0;

 if ((elm = ber_get_element(BER_TYPE_INTEGER)) == ((void*)0))
  return ((void*)0);

 elm->be_numeric = val;

 for (i = 0; i < sizeof(long long); i++) {
  cur = val & 0xff;
  if (cur != 0 && cur != 0xff)
   len = i;
  if ((cur == 0 && last & 0x80) ||
      (cur == 0xff && (last & 0x80) == 0))
   len = i;
  val >>= 8;
  last = cur;
 }
 elm->be_len = len + 1;

 ber_link_elements(prev, elm);

 return elm;
}
