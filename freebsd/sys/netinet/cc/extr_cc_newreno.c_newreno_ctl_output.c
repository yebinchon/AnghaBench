
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {int sopt_valsize; int sopt_dir; } ;
struct newreno {int beta_ecn; int beta; } ;
struct cc_var {struct newreno* cc_data; } ;
struct cc_newreno_opts {int val; int name; } ;




 int EACCES ;
 int EINVAL ;
 int EMSGSIZE ;
 int ENOMEM ;
 int ENOPROTOOPT ;


 int V_cc_do_abe ;
 int V_newreno_beta ;
 int V_newreno_beta_ecn ;
 struct newreno* newreno_malloc (struct cc_var*) ;

__attribute__((used)) static int
newreno_ctl_output(struct cc_var *ccv, struct sockopt *sopt, void *buf)
{
 struct newreno *nreno;
 struct cc_newreno_opts *opt;

 if (sopt->sopt_valsize != sizeof(struct cc_newreno_opts))
  return (EMSGSIZE);

 nreno = ccv->cc_data;
 opt = buf;

 switch (sopt->sopt_dir) {
 case 128:

  if (nreno == ((void*)0)) {
   nreno = newreno_malloc(ccv);
   if (nreno == ((void*)0))
    return (ENOMEM);
  }
  switch (opt->name) {
  case 131:
   nreno->beta = opt->val;
   break;
  case 130:
   if (!V_cc_do_abe)
    return (EACCES);
   nreno->beta_ecn = opt->val;
   break;
  default:
   return (ENOPROTOOPT);
  }
  break;
 case 129:
  switch (opt->name) {
  case 131:
   opt->val = (nreno == ((void*)0)) ?
       V_newreno_beta : nreno->beta;
   break;
  case 130:
   opt->val = (nreno == ((void*)0)) ?
       V_newreno_beta_ecn : nreno->beta_ecn;
   break;
  default:
   return (ENOPROTOOPT);
  }
  break;
 default:
  return (EINVAL);
 }

 return (0);
}
