
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_mls_element {scalar_t__ mme_type; scalar_t__ mme_level; } ;


 scalar_t__ MAC_MLS_TYPE_EQUAL ;

__attribute__((used)) static int
mls_equal_element(struct mac_mls_element *a, struct mac_mls_element *b)
{

 if (a->mme_type == MAC_MLS_TYPE_EQUAL ||
     b->mme_type == MAC_MLS_TYPE_EQUAL)
  return (1);

 return (a->mme_type == b->mme_type && a->mme_level == b->mme_level);
}
