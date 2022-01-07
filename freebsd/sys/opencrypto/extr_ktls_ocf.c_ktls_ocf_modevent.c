
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;


 int M_WAITOK ;
 int counter_u64_alloc (int ) ;
 int counter_u64_free (int ) ;
 int ktls_crypto_backend_deregister (int *) ;
 int ktls_crypto_backend_register (int *) ;
 int ocf_backend ;
 int ocf_gcm_crypts ;
 int ocf_retries ;

__attribute__((used)) static int
ktls_ocf_modevent(module_t mod, int what, void *arg)
{
 int error;

 switch (what) {
 case 129:
  ocf_gcm_crypts = counter_u64_alloc(M_WAITOK);
  ocf_retries = counter_u64_alloc(M_WAITOK);
  return (ktls_crypto_backend_register(&ocf_backend));
 case 128:
  error = ktls_crypto_backend_deregister(&ocf_backend);
  if (error)
   return (error);
  counter_u64_free(ocf_gcm_crypts);
  counter_u64_free(ocf_retries);
  return (0);
 default:
  return (EOPNOTSUPP);
 }
}
