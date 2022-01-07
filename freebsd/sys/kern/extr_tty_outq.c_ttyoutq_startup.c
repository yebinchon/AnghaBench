
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyoutq_block {int dummy; } ;


 int UMA_ALIGN_PTR ;
 int ttyoutq_zone ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static void
ttyoutq_startup(void *dummy)
{

 ttyoutq_zone = uma_zcreate("ttyoutq", sizeof(struct ttyoutq_block),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, 0);
}
