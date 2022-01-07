
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int cr_euid; int cr_ruid; int cr_svuid; int cr_issetugid; } ;
typedef int FILE ;


 int fprintf (int *,char*,int,int,int,int) ;

__attribute__((used)) static void
cred_print(FILE *output, struct cred *cred)
{

 fprintf(output, "(e:%d r:%d s:%d P_SUGID:%d)", cred->cr_euid,
     cred->cr_ruid, cred->cr_svuid, cred->cr_issetugid);
}
