
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_sndinfo {int snd_sid; int snd_context; int snd_assoc_id; int snd_ppid; int snd_flags; } ;
typedef int FILE ;


 int fprintf (int *,char*,int) ;
 int fputs (char*,int *) ;
 int ntohl (int ) ;
 int print_mask_arg (int ,int *,int ) ;
 int sysdecode_sctp_snd_flags ;

__attribute__((used)) static void
print_sctp_sndinfo(FILE *fp, struct sctp_sndinfo *info)
{
 fprintf(fp, "{sid=%u,", info->snd_sid);
 fputs("flgs=", fp);
 print_mask_arg(sysdecode_sctp_snd_flags, fp, info->snd_flags);
 fprintf(fp, ",ppid=%u,", ntohl(info->snd_ppid));
 fprintf(fp, "ctx=%u,", info->snd_context);
 fprintf(fp, "id=%u}", info->snd_assoc_id);
}
