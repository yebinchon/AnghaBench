
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int s_mtx; int s_sid; int * s_ttyp; int s_count; } ;


 int M_SESSION ;
 int PROC_ID_SESSION ;
 int free (struct session*,int ) ;
 int mtx_destroy (int *) ;
 int proc_id_clear (int ,int ) ;
 scalar_t__ refcount_release (int *) ;
 int tty_lock (int *) ;
 int tty_rel_sess (int *,struct session*) ;

void
sess_release(struct session *s)
{

 if (refcount_release(&s->s_count)) {
  if (s->s_ttyp != ((void*)0)) {
   tty_lock(s->s_ttyp);
   tty_rel_sess(s->s_ttyp, s);
  }
  proc_id_clear(PROC_ID_SESSION, s->s_sid);
  mtx_destroy(&s->s_mtx);
  free(s, M_SESSION);
 }
}
