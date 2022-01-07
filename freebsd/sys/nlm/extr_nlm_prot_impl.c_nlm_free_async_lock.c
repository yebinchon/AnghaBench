
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct nlm_async_lock {scalar_t__ af_vp; int af_granted; scalar_t__ af_rpc; } ;


 int CLNT_RELEASE (scalar_t__) ;
 int M_NLM ;
 int free (struct nlm_async_lock*,int ) ;
 int vrele (scalar_t__) ;
 int xdr_free (int ,int *) ;
 scalar_t__ xdr_nlm4_testargs ;

__attribute__((used)) static void
nlm_free_async_lock(struct nlm_async_lock *af)
{



 if (af->af_rpc)
  CLNT_RELEASE(af->af_rpc);
 xdr_free((xdrproc_t) xdr_nlm4_testargs, &af->af_granted);
 if (af->af_vp)
  vrele(af->af_vp);
 free(af, M_NLM);
}
