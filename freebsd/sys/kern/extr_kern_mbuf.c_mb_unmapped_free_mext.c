
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sf_buf {int dummy; } ;
struct TYPE_2__ {struct mbuf* ext_arg2; struct sf_buf* ext_arg1; } ;
struct mbuf {TYPE_1__ m_ext; } ;


 int mb_free_ext (struct mbuf*) ;
 int sf_buf_free (struct sf_buf*) ;

__attribute__((used)) static void
mb_unmapped_free_mext(struct mbuf *m)
{
 struct sf_buf *sf;
 struct mbuf *old_m;

 sf = m->m_ext.ext_arg1;
 sf_buf_free(sf);


 old_m = m->m_ext.ext_arg2;
 mb_free_ext(old_m);
}
