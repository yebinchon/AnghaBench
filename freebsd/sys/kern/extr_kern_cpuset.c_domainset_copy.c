
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domainset {int ds_prefer; int ds_policy; int ds_mask; } ;


 int DOMAINSET_COPY (int *,int *) ;

__attribute__((used)) static void
domainset_copy(const struct domainset *from, struct domainset *to)
{

 DOMAINSET_COPY(&from->ds_mask, &to->ds_mask);
 to->ds_policy = from->ds_policy;
 to->ds_prefer = from->ds_prefer;
}
