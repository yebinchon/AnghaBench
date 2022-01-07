
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct newreno {int beta_ecn; int beta; } ;
struct cc_var {struct newreno* cc_data; } ;


 int M_NEWRENO ;
 int M_NOWAIT ;
 int V_newreno_beta ;
 int V_newreno_beta_ecn ;
 struct newreno* malloc (int,int ,int ) ;

__attribute__((used)) static inline struct newreno *
newreno_malloc(struct cc_var *ccv)
{
 struct newreno *nreno;

 nreno = malloc(sizeof(struct newreno), M_NEWRENO, M_NOWAIT);
 if (nreno != ((void*)0)) {

  nreno->beta = V_newreno_beta;
  nreno->beta_ecn = V_newreno_beta_ecn;
  ccv->cc_data = nreno;
 }

 return (nreno);
}
