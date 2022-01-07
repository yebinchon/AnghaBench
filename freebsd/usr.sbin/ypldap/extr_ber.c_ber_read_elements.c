
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {int dummy; } ;
struct ber {int dummy; } ;


 int DPRINTF (char*,struct ber_element*) ;
 int ber_free_elements (struct ber_element*) ;
 struct ber_element* ber_get_element (int ) ;
 int ber_read_element (struct ber*,struct ber_element*) ;

struct ber_element *
ber_read_elements(struct ber *ber, struct ber_element *elm)
{
 struct ber_element *root = elm;

 if (root == ((void*)0)) {
  if ((root = ber_get_element(0)) == ((void*)0))
   return ((void*)0);
 }

 DPRINTF("read ber elements, root %p\n", root);

 if (ber_read_element(ber, root) == -1) {

  if (elm == ((void*)0))
   ber_free_elements(root);
  return ((void*)0);
 }

 return root;
}
