
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ fflags_t ;


 int printf (char*,...) ;
 int stdout ;
 int sysdecode_fileflags (int ,scalar_t__,scalar_t__*) ;

__attribute__((used)) static void
decode_fileflags(fflags_t value)
{
 bool invalid;
 fflags_t rem;

 if (value == 0) {
  printf("0");
  return;
 }
 printf("%#x<", value);
 invalid = !sysdecode_fileflags(stdout, value, &rem);
 printf(">");
 if (invalid)
  printf("<invalid>%u", rem);
}
