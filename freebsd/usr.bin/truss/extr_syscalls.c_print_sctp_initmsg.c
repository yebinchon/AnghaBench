
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_initmsg {int sinit_num_ostreams; int sinit_max_instreams; int sinit_max_attempts; int sinit_max_init_timeo; } ;
typedef int FILE ;


 int fprintf (int *,char*,int) ;

__attribute__((used)) static void
print_sctp_initmsg(FILE *fp, struct sctp_initmsg *init)
{
 fprintf(fp, "{out=%u,", init->sinit_num_ostreams);
 fprintf(fp, "in=%u,", init->sinit_max_instreams);
 fprintf(fp, "max_rtx=%u,", init->sinit_max_attempts);
 fprintf(fp, "max_rto=%u}", init->sinit_max_init_timeo);
}
