
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_evq {int dummy; } ;


 int sfxge_ev_qpoll (struct sfxge_evq*) ;

__attribute__((used)) static void
sfxge_intr_line(void *arg)
{
 struct sfxge_evq *evq = arg;

 (void)sfxge_ev_qpoll(evq);
}
