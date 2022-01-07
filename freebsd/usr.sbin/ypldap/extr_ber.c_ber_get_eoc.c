
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {scalar_t__ be_encoding; } ;


 scalar_t__ BER_TYPE_EOC ;

int
ber_get_eoc(struct ber_element *elm)
{
 if (elm->be_encoding != BER_TYPE_EOC)
  return -1;

 return 0;
}
