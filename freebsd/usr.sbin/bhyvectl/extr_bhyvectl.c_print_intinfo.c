
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int ;


 int VM_INTINFO_DEL_ERRCODE ;



 int VM_INTINFO_TYPE ;
 int VM_INTINFO_VALID ;
 scalar_t__ VM_INTINFO_VECTOR (int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_intinfo(const char *banner, uint64_t info)
{
 int type;

 printf("%s:\t", banner);
 if (info & VM_INTINFO_VALID) {
  type = info & VM_INTINFO_TYPE;
  switch (type) {
  case 130:
   printf("extint");
   break;
  case 129:
   printf("nmi");
   break;
  case 128:
   printf("swint");
   break;
  default:
   printf("exception");
   break;
  }
  printf(" vector %d", (int)VM_INTINFO_VECTOR(info));
  if (info & VM_INTINFO_DEL_ERRCODE)
   printf(" errcode %#x", (u_int)(info >> 32));
 } else {
  printf("n/a");
 }
 printf("\n");
}
