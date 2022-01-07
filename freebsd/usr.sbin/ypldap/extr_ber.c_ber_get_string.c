
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {scalar_t__ be_encoding; char* be_val; } ;


 scalar_t__ BER_TYPE_OCTETSTRING ;

int
ber_get_string(struct ber_element *elm, char **s)
{
 if (elm->be_encoding != BER_TYPE_OCTETSTRING)
  return -1;

 *s = elm->be_val;
 return 0;
}
