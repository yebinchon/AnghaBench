
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fpn {int dummy; } ;
struct fpemu {int dummy; } ;


 int DPRINTF (int ,char*) ;
 int FPE_REG ;




 int fpu_ftod (struct fpemu*,struct fpn*,int *) ;
 int fpu_ftoi (struct fpemu*,struct fpn*) ;
 int fpu_ftos (struct fpemu*,struct fpn*) ;
 int fpu_ftox (struct fpemu*,struct fpn*,int *) ;
 int panic (char*,int) ;

void
fpu_implode(struct fpemu *fe, struct fpn *fp, int type, u_int *space)
{

 switch (type) {

 case 129:
  space[0] = fpu_ftox(fe, fp, space);
  DPRINTF(FPE_REG, ("fpu_implode: long %x %x\n",
   space[0], space[1]));
  break;

 case 130:
  space[0] = 0;
  space[1] = fpu_ftoi(fe, fp);
  DPRINTF(FPE_REG, ("fpu_implode: int %x\n",
   space[1]));
  break;

 case 128:
  space[0] = fpu_ftos(fe, fp);
  DPRINTF(FPE_REG, ("fpu_implode: single %x\n",
   space[0]));
  break;

 case 131:
  space[0] = fpu_ftod(fe, fp, space);
  DPRINTF(FPE_REG, ("fpu_implode: double %x %x\n",
   space[0], space[1]));
  break; break;

 default:
  panic("fpu_implode: invalid type %d", type);
 }
}
