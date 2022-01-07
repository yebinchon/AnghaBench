
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;
 int stdout ;
 int sysdecode_filemode (int ,int,int*) ;

__attribute__((used)) static void
decode_filemode(int value)
{
 bool invalid;
 int rem;

 if (value == 0) {
  printf("0");
  return;
 }
 printf("%#o<", value);
 invalid = !sysdecode_filemode(stdout, value, &rem);
 printf(">");
 if (invalid)
  printf("<invalid>%u", rem);
}
