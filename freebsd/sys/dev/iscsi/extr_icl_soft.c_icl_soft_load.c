
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icl_pdu {int dummy; } ;


 int KASSERT (int,char*) ;
 int UMA_ALIGN_PTR ;
 int icl_ncons ;
 int icl_pdu_zone ;
 int icl_register (char*,int,int ,int ,int ) ;
 int icl_soft_limits ;
 int icl_soft_new_conn ;
 int refcount_init (int *,int ) ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static int
icl_soft_load(void)
{
 int error;

 icl_pdu_zone = uma_zcreate("icl_pdu",
     sizeof(struct icl_pdu), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, 0);
 refcount_init(&icl_ncons, 0);






 error = icl_register("none", 0, 0,
     icl_soft_limits, icl_soft_new_conn);
 KASSERT(error == 0, ("failed to register"));
 return (error);
}
