
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {char* printer; } ;


 int MAXPATHLEN ;
 scalar_t__ SQS_DISABLEQ ;
 scalar_t__ SQS_STOPP ;
 int generic_msg ;
 int lock_file_name (struct printer*,char*,int) ;
 int printf (char*,char*) ;
 int set_qstate (scalar_t__,char*) ;
 int upstat (struct printer*,int ,int) ;

void
down_q(struct printer *pp)
{
 int setres;
 char lf[MAXPATHLEN];

 lock_file_name(pp, lf, sizeof lf);
 printf("%s:\n", pp->printer);

 setres = set_qstate(SQS_DISABLEQ+SQS_STOPP, lf);
 if (setres >= 0)
  upstat(pp, generic_msg, 1);
}
