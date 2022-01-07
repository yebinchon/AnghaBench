
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsnode {int dummy; } ;


 int UMA_ALIGN_PTR ;
 int newnfsnode_zone ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

void
ncl_nhinit(void)
{

 newnfsnode_zone = uma_zcreate("NCLNODE", sizeof(struct nfsnode), ((void*)0),
     ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, 0);
}
