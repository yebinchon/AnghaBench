
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_evq {scalar_t__ init_state; } ;
typedef int boolean_t ;


 int KASSERT (int,char*) ;
 int SFXGE_EVQ_LOCK_ASSERT_OWNED (struct sfxge_evq*) ;
 scalar_t__ SFXGE_EVQ_STARTED ;
 scalar_t__ SFXGE_EVQ_STARTING ;

__attribute__((used)) static boolean_t
sfxge_ev_initialized(void *arg)
{
 struct sfxge_evq *evq;

 evq = (struct sfxge_evq *)arg;
 SFXGE_EVQ_LOCK_ASSERT_OWNED(evq);


 KASSERT(evq->init_state == SFXGE_EVQ_STARTING ||
  evq->init_state == SFXGE_EVQ_STARTED,
     ("evq not starting"));

 evq->init_state = SFXGE_EVQ_STARTED;

 return (0);
}
