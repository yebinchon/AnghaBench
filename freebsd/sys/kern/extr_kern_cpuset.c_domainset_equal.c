
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domainset {scalar_t__ ds_policy; scalar_t__ ds_prefer; int ds_mask; } ;


 scalar_t__ DOMAINSET_CMP (int *,int *) ;

__attribute__((used)) static int
domainset_equal(const struct domainset *one, const struct domainset *two)
{

 return (DOMAINSET_CMP(&one->ds_mask, &two->ds_mask) == 0 &&
     one->ds_policy == two->ds_policy &&
     one->ds_prefer == two->ds_prefer);
}
