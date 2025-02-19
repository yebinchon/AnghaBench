
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int si_note; } ;
struct socket {int so_options; short so_state; TYPE_1__ so_rdsel; } ;
struct TYPE_4__ {int td_ucred; } ;


 int EINVAL ;
 int KNOTE_UNLOCKED (int *,int ) ;
 int SOLISTEN_LOCK (struct socket*) ;
 int SO_ACCEPTCONN ;
 short SS_NBIO ;
 TYPE_2__* curthread ;
 int mac_socket_check_accept (int ,struct socket*) ;
 int solisten_dequeue (struct socket*,struct socket**,int ) ;

int
svc_vc_accept(struct socket *head, struct socket **sop)
{
 struct socket *so;
 int error = 0;
 short nbio;


 if ((head->so_options & SO_ACCEPTCONN) == 0) {
  error = EINVAL;
  goto done;
 }
 SOLISTEN_LOCK(head);
 nbio = head->so_state & SS_NBIO;
 head->so_state |= SS_NBIO;
 error = solisten_dequeue(head, &so, 0);
 head->so_state &= (nbio & ~SS_NBIO);
 if (error)
  goto done;

 so->so_state |= nbio;
 *sop = so;


 KNOTE_UNLOCKED(&head->so_rdsel.si_note, 0);
done:
 return (error);
}
