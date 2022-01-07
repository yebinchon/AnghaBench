
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_sndrcvinfo {int sinfo_stream; int sinfo_ssn; int sinfo_context; int sinfo_timetolive; int sinfo_tsn; int sinfo_cumtsn; int sinfo_assoc_id; int sinfo_ppid; int sinfo_flags; } ;
typedef int FILE ;


 int fprintf (int *,char*,int) ;
 int fputs (char*,int *) ;
 int ntohl (int ) ;
 int sysdecode_sctp_sinfo_flags (int *,int ) ;

__attribute__((used)) static void
print_sctp_sndrcvinfo(FILE *fp, bool receive, struct sctp_sndrcvinfo *info)
{
 fprintf(fp, "{sid=%u,", info->sinfo_stream);
 if (receive) {
  fprintf(fp, "ssn=%u,", info->sinfo_ssn);
 }
 fputs("flgs=", fp);
 sysdecode_sctp_sinfo_flags(fp, info->sinfo_flags);
 fprintf(fp, ",ppid=%u,", ntohl(info->sinfo_ppid));
 if (!receive) {
  fprintf(fp, "ctx=%u,", info->sinfo_context);
  fprintf(fp, "ttl=%u,", info->sinfo_timetolive);
 }
 if (receive) {
  fprintf(fp, "tsn=%u,", info->sinfo_tsn);
  fprintf(fp, "cumtsn=%u,", info->sinfo_cumtsn);
 }
 fprintf(fp, "id=%u}", info->sinfo_assoc_id);
}
