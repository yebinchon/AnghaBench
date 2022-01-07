
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {int be_class; unsigned long be_encoding; unsigned long be_type; } ;


 int BER_CLASS_MASK ;
 unsigned long BER_TYPE_DEFAULT ;

void
ber_set_header(struct ber_element *elm, int class, unsigned long type)
{
 elm->be_class = class & BER_CLASS_MASK;
 if (type == BER_TYPE_DEFAULT)
  type = elm->be_encoding;
 elm->be_type = type;
}
