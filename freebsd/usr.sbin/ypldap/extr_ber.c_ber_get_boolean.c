
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {scalar_t__ be_encoding; scalar_t__ be_numeric; } ;


 scalar_t__ BER_TYPE_BOOLEAN ;

int
ber_get_boolean(struct ber_element *elm, int *b)
{
 if (elm->be_encoding != BER_TYPE_BOOLEAN)
  return -1;

 *b = !(elm->be_numeric == 0);
 return 0;
}
