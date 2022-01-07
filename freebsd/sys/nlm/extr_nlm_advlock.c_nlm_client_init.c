
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 int LIST_INIT (int *) ;
 int MTX_DEF ;
 int NLM_SVID_HASH_SIZE ;
 scalar_t__ PID_MAX ;
 int mtx_init (int *,char*,int *,int ) ;
 int new_unrhdr (scalar_t__,int ,int *) ;
 int * nlm_file_svids ;
 int nlm_svid_allocator ;
 int nlm_svid_lock ;

__attribute__((used)) static void
nlm_client_init(void *dummy)
{
 int i;

 mtx_init(&nlm_svid_lock, "NLM svid lock", ((void*)0), MTX_DEF);

 nlm_svid_allocator = new_unrhdr(PID_MAX + 2, INT_MAX, &nlm_svid_lock);
 for (i = 0; i < NLM_SVID_HASH_SIZE; i++)
  LIST_INIT(&nlm_file_svids[i]);
}
