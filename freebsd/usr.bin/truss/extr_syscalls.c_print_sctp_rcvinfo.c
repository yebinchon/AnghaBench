
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_rcvinfo {int rcv_sid; int rcv_ssn; int rcv_tsn; int rcv_cumtsn; int rcv_context; int rcv_assoc_id; int rcv_ppid; int rcv_flags; } ;
typedef int FILE ;


 int fprintf (int *,char*,int) ;
 int fputs (char*,int *) ;
 int ntohl (int ) ;
 int print_mask_arg (int ,int *,int ) ;
 int sysdecode_sctp_rcv_flags ;

__attribute__((used)) static void
print_sctp_rcvinfo(FILE *fp, struct sctp_rcvinfo *info)
{
 fprintf(fp, "{sid=%u,", info->rcv_sid);
 fprintf(fp, "ssn=%u,", info->rcv_ssn);
 fputs("flgs=", fp);
 print_mask_arg(sysdecode_sctp_rcv_flags, fp, info->rcv_flags);
 fprintf(fp, ",ppid=%u,", ntohl(info->rcv_ppid));
 fprintf(fp, "tsn=%u,", info->rcv_tsn);
 fprintf(fp, "cumtsn=%u,", info->rcv_cumtsn);
 fprintf(fp, "ctx=%u,", info->rcv_context);
 fprintf(fp, "id=%u}", info->rcv_assoc_id);
}
