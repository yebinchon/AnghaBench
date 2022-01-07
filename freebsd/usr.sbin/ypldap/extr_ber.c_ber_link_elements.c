
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {scalar_t__ be_encoding; struct ber_element* be_next; struct ber_element* be_sub; } ;


 scalar_t__ BER_TYPE_SEQUENCE ;
 scalar_t__ BER_TYPE_SET ;

void
ber_link_elements(struct ber_element *prev, struct ber_element *elm)
{
 if (prev != ((void*)0)) {
  if ((prev->be_encoding == BER_TYPE_SEQUENCE ||
      prev->be_encoding == BER_TYPE_SET) &&
      prev->be_sub == ((void*)0))
   prev->be_sub = elm;
  else
   prev->be_next = elm;
 }
}
