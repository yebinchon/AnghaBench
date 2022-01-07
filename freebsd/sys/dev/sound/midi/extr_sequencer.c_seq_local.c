
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct seq_softc {int unit; int seq_lock; } ;


 int MA_OWNED ;
 int SEQ_DEBUG (int,int ) ;
 int mtx_assert (int *,int ) ;
 int printf (char*,int,...) ;

__attribute__((used)) static int
seq_local(struct seq_softc *scp, u_char *event)
{
 int ret;

 ret = 0;
 mtx_assert(&scp->seq_lock, MA_OWNED);

 SEQ_DEBUG(5, printf("seq_local: unit %d, cmd %d\n", scp->unit,
     event[1]));
 switch (event[1]) {
 default:
  SEQ_DEBUG(1, printf("seq_local event type %d not handled\n",
      event[1]));
  ret = 1;
  break;
 }
 return ret;
}
