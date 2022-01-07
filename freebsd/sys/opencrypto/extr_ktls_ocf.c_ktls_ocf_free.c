
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocf_session {int lock; } ;
struct ktls_session {struct ocf_session* cipher; } ;


 int M_KTLS_OCF ;
 int explicit_bzero (struct ocf_session*,int) ;
 int free (struct ocf_session*,int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
ktls_ocf_free(struct ktls_session *tls)
{
 struct ocf_session *os;

 os = tls->cipher;
 mtx_destroy(&os->lock);
 explicit_bzero(os, sizeof(*os));
 free(os, M_KTLS_OCF);
}
