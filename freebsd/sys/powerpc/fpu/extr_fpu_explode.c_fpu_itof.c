
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct fpn {scalar_t__* fp_mant; int fp_exp; } ;


 int FPC_NUM ;
 int FPC_ZERO ;
 int FP_LG ;
 int fpu_norm (struct fpn*) ;

int
fpu_itof(struct fpn *fp, u_int i)
{

 if (i == 0)
  return (FPC_ZERO);






 fp->fp_exp = FP_LG;
 fp->fp_mant[0] = (int)i < 0 ? -i : i;
 fp->fp_mant[1] = 0;
 fp->fp_mant[2] = 0;
 fp->fp_mant[3] = 0;
 fpu_norm(fp);
 return (FPC_NUM);
}
