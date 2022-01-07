
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct msgbuf {int msg_lastpri; int msg_flags; int msg_lock; int msg_wseq; } ;
typedef int intmax_t ;
typedef int buf ;


 int MAXPRIBUF ;
 int MSGBUF_NEEDNL ;
 int msgbuf_do_addchar (struct msgbuf*,int *,char const) ;
 scalar_t__ msgbuf_show_timestamp ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int snprintf (char*,int,char*,int ) ;
 size_t sprintf (char*,char*,int) ;
 size_t strlen (char const*) ;
 scalar_t__ time_uptime ;

void
msgbuf_addstr(struct msgbuf *mbp, int pri, const char *str, int filter_cr)
{
 u_int seq;
 size_t len, prefix_len;
 char prefix[MAXPRIBUF];
 char buf[32];
 int i, j, needtime;

 len = strlen(str);
 prefix_len = 0;


 if (len == 0)
  return;

 mtx_lock_spin(&mbp->msg_lock);





 if (pri != -1)
  prefix_len = sprintf(prefix, "<%d>", pri);




 seq = mbp->msg_wseq;
 if (mbp->msg_lastpri != pri && (mbp->msg_flags & MSGBUF_NEEDNL) != 0) {

  msgbuf_do_addchar(mbp, &seq, '\n');
  mbp->msg_flags &= ~MSGBUF_NEEDNL;
 }

 needtime = 1;
 for (i = 0; i < len; i++) {





  if ((mbp->msg_flags & MSGBUF_NEEDNL) == 0 && prefix_len != 0) {
   int j;

   for (j = 0; j < prefix_len; j++)
    msgbuf_do_addchar(mbp, &seq, prefix[j]);
  }

  if (msgbuf_show_timestamp && needtime == 1 &&
      (mbp->msg_flags & MSGBUF_NEEDNL) == 0) {

   snprintf(buf, sizeof(buf), "[%jd] ",
       (intmax_t)time_uptime);
   for (j = 0; buf[j] != '\0'; j++)
    msgbuf_do_addchar(mbp, &seq, buf[j]);
   needtime = 0;
  }
  if ((filter_cr != 0) && (str[i] == '\r'))
   continue;





  if (str[i] == '\n')
   mbp->msg_flags &= ~MSGBUF_NEEDNL;
  else
   mbp->msg_flags |= MSGBUF_NEEDNL;

  msgbuf_do_addchar(mbp, &seq, str[i]);
 }





 mbp->msg_wseq = seq;




 mbp->msg_lastpri = pri;

 mtx_unlock_spin(&mbp->msg_lock);

}
