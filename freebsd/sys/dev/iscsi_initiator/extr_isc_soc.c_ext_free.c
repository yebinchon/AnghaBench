
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ext_buf; TYPE_2__* ext_arg1; } ;
struct mbuf {TYPE_1__ m_ext; } ;
struct TYPE_4__ {int * buf; } ;
typedef TYPE_2__ pduq_t ;


 int M_ISCSIBUF ;
 int debug (int,char*,int ,int ,int *) ;
 int free (int *,int ) ;
 int ou_refcnt ;

__attribute__((used)) static void
ext_free(struct mbuf *m)
{
     pduq_t *pq = m->m_ext.ext_arg1;

     if(pq->buf != ((void*)0)) {
   debug(3, "ou_refcnt=%d a=%p b=%p",
        ou_refcnt, m->m_ext.ext_buf, pq->buf);
   free(pq->buf, M_ISCSIBUF);
   pq->buf = ((void*)0);
     }
}
