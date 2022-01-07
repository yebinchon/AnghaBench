
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_cop2_state {int dummy; } ;


 int ctxzone ;
 int printf (char*) ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int,int ) ;

__attribute__((used)) static void
octeon_cop2_init(void* dummy)
{
 printf("Create COP2 context zone\n");
 ctxzone = uma_zcreate("COP2 context",
                         sizeof(struct octeon_cop2_state),
    ((void*)0), ((void*)0), ((void*)0), ((void*)0), 8, 0);
}
