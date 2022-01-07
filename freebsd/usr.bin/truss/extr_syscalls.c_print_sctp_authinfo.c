
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_authinfo {int auth_keynumber; } ;
typedef int FILE ;


 int fprintf (int *,char*,int) ;

__attribute__((used)) static void
print_sctp_authinfo(FILE *fp, struct sctp_authinfo *info)
{
 fprintf(fp, "{num=%u}", info->auth_keynumber);
}
