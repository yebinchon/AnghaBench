
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_nxtinfo {int nxt_sid; int nxt_length; int nxt_assoc_id; int nxt_ppid; int nxt_flags; } ;
typedef int FILE ;


 int fprintf (int *,char*,int) ;
 int fputs (char*,int *) ;
 int ntohl (int ) ;
 int print_mask_arg (int ,int *,int ) ;
 int sysdecode_sctp_nxt_flags ;

__attribute__((used)) static void
print_sctp_nxtinfo(FILE *fp, struct sctp_nxtinfo *info)
{
 fprintf(fp, "{sid=%u,", info->nxt_sid);
 fputs("flgs=", fp);
 print_mask_arg(sysdecode_sctp_nxt_flags, fp, info->nxt_flags);
 fprintf(fp, ",ppid=%u,", ntohl(info->nxt_ppid));
 fprintf(fp, "len=%u,", info->nxt_length);
 fprintf(fp, "id=%u}", info->nxt_assoc_id);
}
