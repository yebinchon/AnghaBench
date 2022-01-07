
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {scalar_t__ be_encoding; long long be_numeric; } ;


 scalar_t__ BER_TYPE_ENUMERATED ;

int
ber_get_enumerated(struct ber_element *elm, long long *n)
{
 if (elm->be_encoding != BER_TYPE_ENUMERATED)
  return -1;

 *n = elm->be_numeric;
 return 0;
}
