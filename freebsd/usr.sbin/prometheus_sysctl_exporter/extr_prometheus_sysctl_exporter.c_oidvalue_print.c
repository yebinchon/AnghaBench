
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double s; double u; double f; } ;
struct oidvalue {int type; TYPE_1__ value; } ;
typedef int FILE ;







 int fpclassify (double) ;
 int fprintf (int *,char*,...) ;
 int signbit (double) ;

__attribute__((used)) static void
oidvalue_print(const struct oidvalue *ov, FILE *fp)
{

 switch (ov->type) {
 case 129:
  fprintf(fp, "%jd", ov->value.s);
  break;
 case 128:
  fprintf(fp, "%ju", ov->value.u);
  break;
 case 132:
  switch (fpclassify(ov->value.f)) {
  case 131:
   if (signbit(ov->value.f))
    fprintf(fp, "-Inf");
   else
    fprintf(fp, "+Inf");
   break;
  case 130:
   fprintf(fp, "Nan");
   break;
  default:
   fprintf(fp, "%.6f", ov->value.f);
   break;
  }
  break;
 }
}
