
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_offload_policy {int member_0; } ;


 int CHELSIO_T4_SET_OFLD_POLICY ;
 int EINVAL ;
 int doit (int ,struct t4_offload_policy*) ;
 int free_offload_policy (struct t4_offload_policy*) ;
 int parse_offload_policy (char const*,struct t4_offload_policy*) ;
 int strcmp (char const*,char*) ;
 int warnx (char*) ;

__attribute__((used)) static int
load_offload_policy(int argc, const char *argv[])
{
 int rc = 0;
 const char *fname = argv[0];
 struct t4_offload_policy op = {0};

 if (argc != 1) {
  warnx("incorrect number of arguments.");
  return (EINVAL);
 }

 if (!strcmp(fname, "clear") || !strcmp(fname, "none")) {

  return (doit(CHELSIO_T4_SET_OFLD_POLICY, &op));
 }

 rc = parse_offload_policy(fname, &op);
 if (rc != 0) {

  return (EINVAL);
 }

 rc = doit(CHELSIO_T4_SET_OFLD_POLICY, &op);
 free_offload_policy(&op);

 return (rc);
}
