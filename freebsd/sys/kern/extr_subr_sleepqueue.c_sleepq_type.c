
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sleepqueue {int sq_type; } ;


 int MPASS (int ) ;
 int sleepq_lock (void*) ;
 struct sleepqueue* sleepq_lookup (void*) ;
 int sleepq_release (void*) ;

int
sleepq_type(void *wchan)
{
 struct sleepqueue *sq;
 int type;

 MPASS(wchan != ((void*)0));

 sleepq_lock(wchan);
 sq = sleepq_lookup(wchan);
 if (sq == ((void*)0)) {
  sleepq_release(wchan);
  return (-1);
 }
 type = sq->sq_type;
 sleepq_release(wchan);
 return (type);
}
