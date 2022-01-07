
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;
struct fpn {scalar_t__* fp_mant; int fp_exp; } ;
typedef scalar_t__ int64_t ;


 int FPC_NUM ;
 int FPC_ZERO ;
 int FP_LG2 ;
 int fpu_norm (struct fpn*) ;

int
fpu_xtof(struct fpn *fp, u_int64_t i)
{

 if (i == 0)
  return (FPC_ZERO);






 fp->fp_exp = FP_LG2;
 *((int64_t*)fp->fp_mant) = (int64_t)i < 0 ? -i : i;
 fp->fp_mant[2] = 0;
 fp->fp_mant[3] = 0;
 fpu_norm(fp);
 return (FPC_NUM);
}
