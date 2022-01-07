
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domainset {scalar_t__ ds_policy; int ds_mask; int ds_prefer; } ;


 int DOMAINSET_ISSET (int ,int *) ;
 int DOMAINSET_OVERLAP (int *,int *) ;
 scalar_t__ DOMAINSET_POLICY_PREFER ;

__attribute__((used)) static int
domainset_restrict(const struct domainset *parent,
    const struct domainset *child)
{
 if (child->ds_policy != DOMAINSET_POLICY_PREFER)
  return (DOMAINSET_OVERLAP(&parent->ds_mask, &child->ds_mask));
 return (DOMAINSET_ISSET(child->ds_prefer, &parent->ds_mask));
}
