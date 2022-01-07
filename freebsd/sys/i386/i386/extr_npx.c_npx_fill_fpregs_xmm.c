
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savexmm {int dummy; } ;
struct save87 {int dummy; } ;


 int bzero (struct save87*,int) ;
 int npx_fill_fpregs_xmm1 (struct savexmm*,struct save87*) ;

void
npx_fill_fpregs_xmm(struct savexmm *sv_xmm, struct save87 *sv_87)
{

 bzero(sv_87, sizeof(*sv_87));
 npx_fill_fpregs_xmm1(sv_xmm, sv_87);
}
