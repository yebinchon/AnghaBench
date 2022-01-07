
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_prinfo {int pr_value; int pr_policy; } ;
typedef int FILE ;


 int fprintf (int *,char*,int) ;
 int fputs (char*,int *) ;
 int print_integer_arg (int ,int *,int ) ;
 int sysdecode_sctp_pr_policy ;

__attribute__((used)) static void
print_sctp_prinfo(FILE *fp, struct sctp_prinfo *info)
{
 fputs("{pol=", fp);
 print_integer_arg(sysdecode_sctp_pr_policy, fp, info->pr_policy);
 fprintf(fp, ",val=%u}", info->pr_value);
}
