
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_rights_t ;


 int printf (char*) ;
 int stdout ;
 int sysdecode_cap_rights (int ,int *) ;

void
ktrcaprights(cap_rights_t *rightsp)
{

 printf("cap_rights_t ");
 sysdecode_cap_rights(stdout, rightsp);
 printf("\n");
}
