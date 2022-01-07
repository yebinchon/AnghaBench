
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jobspec_hdr {int dummy; } ;
typedef int process_jqe ;


 int SCQ_JSORDER ;
 int STAILQ_INIT (struct jobspec_hdr*) ;
 int free_jobspec (struct jobspec_hdr*) ;
 int nitems ;
 int parse_jobspec (char*,struct jobspec_hdr*) ;
 int printf (char*,char*) ;
 int queue ;
 int scanq_jobspec (int ,int ,int ,struct jobspec_hdr*,int ,void*) ;

__attribute__((used)) static int
process_jobs(int argc, char *argv[], process_jqe process_rtn, void *myinfo)
{
 struct jobspec_hdr jobs_wanted;
 int i, matchcnt, pjres;

 STAILQ_INIT(&jobs_wanted);
 for (i = 0; i < argc; i++) {
  pjres = parse_jobspec(argv[i], &jobs_wanted);
  if (pjres == 0) {
   printf("\tinvalid job specifier: %s\n", argv[i]);
   continue;
  }
 }
 matchcnt = scanq_jobspec(nitems, queue, SCQ_JSORDER, &jobs_wanted,
     process_rtn, myinfo);

 free_jobspec(&jobs_wanted);
 return (matchcnt);
}
