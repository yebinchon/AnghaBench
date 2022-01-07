
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_sge_context {long cid; int mem_id; int member_0; } ;


 int CHELSIO_T4_GET_SGE_CONTEXT ;
 int EINVAL ;
 int SGE_CONTEXT_CNM ;
 int SGE_CONTEXT_EGRESS ;
 int SGE_CONTEXT_FLM ;
 int SGE_CONTEXT_INGRESS ;
 int chip_id ;
 int doit (int ,struct t4_sge_context*) ;
 int show_t4_ctxt (struct t4_sge_context*) ;
 int show_t5t6_ctxt (struct t4_sge_context*,int) ;
 char* str_to_number (char const*,long*,int *) ;
 int strcmp (char const*,char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
get_sge_context(int argc, const char *argv[])
{
 int rc;
 char *p;
 long cid;
 struct t4_sge_context cntxt = {0};

 if (argc != 2) {
  warnx("sge_context: incorrect number of arguments.");
  return (EINVAL);
 }

 if (!strcmp(argv[0], "egress"))
  cntxt.mem_id = SGE_CONTEXT_EGRESS;
 else if (!strcmp(argv[0], "ingress"))
  cntxt.mem_id = SGE_CONTEXT_INGRESS;
 else if (!strcmp(argv[0], "fl"))
  cntxt.mem_id = SGE_CONTEXT_FLM;
 else if (!strcmp(argv[0], "cong"))
  cntxt.mem_id = SGE_CONTEXT_CNM;
 else {
  warnx("unknown context type \"%s\"; known types are egress, "
      "ingress, fl, and cong.", argv[0]);
  return (EINVAL);
 }

 p = str_to_number(argv[1], &cid, ((void*)0));
 if (*p) {
  warnx("invalid context id \"%s\"", argv[1]);
  return (EINVAL);
 }
 cntxt.cid = cid;

 rc = doit(CHELSIO_T4_GET_SGE_CONTEXT, &cntxt);
 if (rc != 0)
  return (rc);

 if (chip_id == 4)
  show_t4_ctxt(&cntxt);
 else
  show_t5t6_ctxt(&cntxt, chip_id);

 return (0);
}
