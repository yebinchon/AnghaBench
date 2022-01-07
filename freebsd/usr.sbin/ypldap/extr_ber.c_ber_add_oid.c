
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct ber_oid {int dummy; } ;
struct ber_element {size_t be_len; int be_free; int * be_val; } ;


 int BER_TYPE_OBJECT ;
 int ber_free_elements (struct ber_element*) ;
 struct ber_element* ber_get_element (int ) ;
 int ber_link_elements (struct ber_element*,struct ber_element*) ;
 size_t ber_oid2ber (struct ber_oid*,int *,size_t) ;
 int * calloc (int,size_t) ;

struct ber_element *
ber_add_oid(struct ber_element *prev, struct ber_oid *o)
{
 struct ber_element *elm;
 u_int8_t *buf;
 size_t len;

 if ((elm = ber_get_element(BER_TYPE_OBJECT)) == ((void*)0))
  return (((void*)0));

 if ((len = ber_oid2ber(o, ((void*)0), 0)) == 0)
  goto fail;

 if ((buf = calloc(1, len)) == ((void*)0))
  goto fail;

 elm->be_val = buf;
 elm->be_len = len;
 elm->be_free = 1;

 if (ber_oid2ber(o, buf, len) != len)
  goto fail;

 ber_link_elements(prev, elm);

 return (elm);

 fail:
 ber_free_elements(elm);
 return (((void*)0));
}
