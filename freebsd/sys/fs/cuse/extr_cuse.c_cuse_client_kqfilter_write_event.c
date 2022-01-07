
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {struct cuse_client* kn_hook; } ;
struct cuse_client {int cflags; } ;


 int CUSE_CLI_KNOTE_NEED_WRITE ;
 int MA_OWNED ;
 int cuse_mtx ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
cuse_client_kqfilter_write_event(struct knote *kn, long hint)
{
 struct cuse_client *pcc;

 mtx_assert(&cuse_mtx, MA_OWNED);

 pcc = kn->kn_hook;
 return ((pcc->cflags & CUSE_CLI_KNOTE_NEED_WRITE) ? 1 : 0);
}
