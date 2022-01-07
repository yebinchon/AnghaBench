
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ktr_faultend {int result; } ;


 int printf (char*,...) ;
 char* sysdecode_vmresult (int) ;

void
ktrfaultend(struct ktr_faultend *ktr)
{
 const char *str;

 str = sysdecode_vmresult(ktr->result);
 if (str != ((void*)0))
  printf("%s", str);
 else
  printf("<invalid=%d>", ktr->result);
 printf("\n");
}
