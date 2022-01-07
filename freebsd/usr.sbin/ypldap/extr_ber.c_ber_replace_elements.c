
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {int dummy; } ;


 int ber_free_elements (struct ber_element*) ;
 int ber_link_elements (struct ber_element*,struct ber_element*) ;
 struct ber_element* ber_unlink_elements (struct ber_element*) ;

void
ber_replace_elements(struct ber_element *prev, struct ber_element *new)
{
 struct ber_element *ber, *next;

 ber = ber_unlink_elements(prev);
 next = ber_unlink_elements(ber);
 ber_link_elements(new, next);
 ber_link_elements(prev, new);


 ber_free_elements(ber);
}
