
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {int dummy; } ;


 int BER_TYPE_NULL ;
 struct ber_element* ber_get_element (int ) ;
 int ber_link_elements (struct ber_element*,struct ber_element*) ;

struct ber_element *
ber_add_null(struct ber_element *prev)
{
 struct ber_element *elm;

 if ((elm = ber_get_element(BER_TYPE_NULL)) == ((void*)0))
  return ((void*)0);

 ber_link_elements(prev, elm);

 return elm;
}
