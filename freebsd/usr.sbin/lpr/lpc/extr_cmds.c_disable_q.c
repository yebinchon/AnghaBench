
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {char* printer; } ;


 int MAXPATHLEN ;
 int SQS_DISABLEQ ;
 int lock_file_name (struct printer*,char*,int) ;
 int printf (char*,char*) ;
 int set_qstate (int ,char*) ;

void
disable_q(struct printer *pp)
{
 int setres;
 char lf[MAXPATHLEN];

 lock_file_name(pp, lf, sizeof lf);
 printf("%s:\n", pp->printer);

 setres = set_qstate(SQS_DISABLEQ, lf);
}
