
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {scalar_t__ be_encoding; size_t be_len; void* be_val; } ;


 scalar_t__ BER_TYPE_OCTETSTRING ;

int
ber_get_nstring(struct ber_element *elm, void **p, size_t *len)
{
 if (elm->be_encoding != BER_TYPE_OCTETSTRING)
  return -1;

 *p = elm->be_val;
 *len = elm->be_len;
 return 0;
}
