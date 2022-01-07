
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {scalar_t__ be_encoding; struct ber_element* be_val; scalar_t__ be_free; struct ber_element* be_next; struct ber_element* be_sub; } ;


 scalar_t__ BER_TYPE_BITSTRING ;
 scalar_t__ BER_TYPE_OBJECT ;
 scalar_t__ BER_TYPE_OCTETSTRING ;
 scalar_t__ BER_TYPE_SEQUENCE ;
 scalar_t__ BER_TYPE_SET ;
 int free (struct ber_element*) ;

void
ber_free_elements(struct ber_element *root)
{
 if (root->be_sub && (root->be_encoding == BER_TYPE_SEQUENCE ||
     root->be_encoding == BER_TYPE_SET))
  ber_free_elements(root->be_sub);
 if (root->be_next)
  ber_free_elements(root->be_next);
 if (root->be_free && (root->be_encoding == BER_TYPE_OCTETSTRING ||
     root->be_encoding == BER_TYPE_BITSTRING ||
     root->be_encoding == BER_TYPE_OBJECT))
  free(root->be_val);
 free(root);
}
