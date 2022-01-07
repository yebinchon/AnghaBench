
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_tid; } ;
typedef int lwpid_t ;


 int ENXIO ;
 int gdb_tx_begin (char) ;
 int gdb_tx_char (char) ;
 int gdb_tx_end () ;
 int gdb_tx_err (int ) ;
 int gdb_tx_varhex (int ) ;
 scalar_t__ gdb_txbuf_has_capacity (size_t const) ;
 struct thread* kdb_thr_next (struct thread*) ;

__attribute__((used)) static void
gdb_do_threadinfo(struct thread **thr_iter)
{
 static struct thread * const done_sentinel = (void *)(uintptr_t)1;
 static const size_t tidsz_hex = sizeof(lwpid_t) * 2;
 size_t tds_sent;

 if (*thr_iter == ((void*)0)) {
  gdb_tx_err(ENXIO);
  return;
 }

 if (*thr_iter == done_sentinel) {
  gdb_tx_begin('l');
  *thr_iter = ((void*)0);
  goto sendit;
 }

 gdb_tx_begin('m');

 for (tds_sent = 0;
     *thr_iter != ((void*)0) && gdb_txbuf_has_capacity(tidsz_hex + 1);
     *thr_iter = kdb_thr_next(*thr_iter), tds_sent++) {
  if (tds_sent > 0)
   gdb_tx_char(',');
  gdb_tx_varhex((*thr_iter)->td_tid);
 }





 if (*thr_iter == ((void*)0) && tds_sent > 0)
  *thr_iter = done_sentinel;

sendit:
 gdb_tx_end();
}
