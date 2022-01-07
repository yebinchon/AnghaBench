
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {scalar_t__ kn_data; } ;


 int MA_OWNED ;
 scalar_t__ msgbuf_getcount (int ) ;
 int msgbuf_lock ;
 int msgbufp ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
logkqread(struct knote *kn, long hint)
{

 mtx_assert(&msgbuf_lock, MA_OWNED);
 kn->kn_data = msgbuf_getcount(msgbufp);
 return (kn->kn_data != 0);
}
