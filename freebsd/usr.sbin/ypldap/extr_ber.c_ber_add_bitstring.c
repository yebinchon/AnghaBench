
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {size_t be_len; int be_free; void* be_val; } ;


 int BER_TYPE_BITSTRING ;
 int bcopy (void const*,void*,size_t) ;
 struct ber_element* ber_get_element (int ) ;
 int ber_link_elements (struct ber_element*,struct ber_element*) ;
 void* calloc (int,size_t) ;
 int free (void*) ;

struct ber_element *
ber_add_bitstring(struct ber_element *prev, const void *v0, size_t len)
{
 struct ber_element *elm;
 void *v;

 if ((v = calloc(1, len)) == ((void*)0))
  return ((void*)0);
 if ((elm = ber_get_element(BER_TYPE_BITSTRING)) == ((void*)0)) {
  free(v);
  return ((void*)0);
 }

 bcopy(v0, v, len);
 elm->be_val = v;
 elm->be_len = len;
 elm->be_free = 1;

 ber_link_elements(prev, elm);

 return elm;
}
