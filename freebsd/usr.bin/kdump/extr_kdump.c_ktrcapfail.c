
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ktr_cap_fail {int cap_type; int cap_held; int cap_needed; } ;






 int printf (char*) ;
 int stdout ;
 int sysdecode_cap_rights (int ,int *) ;

void
ktrcapfail(struct ktr_cap_fail *ktr)
{
 switch (ktr->cap_type) {
 case 129:

  printf("operation requires ");
  sysdecode_cap_rights(stdout, &ktr->cap_needed);
  printf(", descriptor holds ");
  sysdecode_cap_rights(stdout, &ktr->cap_held);
  break;
 case 131:

  printf("attempt to increase capabilities from ");
  sysdecode_cap_rights(stdout, &ktr->cap_held);
  printf(" to ");
  sysdecode_cap_rights(stdout, &ktr->cap_needed);
  break;
 case 128:

  printf("disallowed system call");
  break;
 case 130:

  printf("restricted VFS lookup");
  break;
 default:
  printf("unknown capability failure: ");
  sysdecode_cap_rights(stdout, &ktr->cap_needed);
  printf(" ");
  sysdecode_cap_rights(stdout, &ktr->cap_held);
  break;
 }
 printf("\n");
}
