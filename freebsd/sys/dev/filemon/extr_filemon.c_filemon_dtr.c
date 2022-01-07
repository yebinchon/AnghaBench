
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filemon {int lock; } ;


 int filemon_close_log (struct filemon*) ;
 int filemon_drop (struct filemon*) ;
 int filemon_untrack_processes (struct filemon*) ;
 int sx_xlock (int *) ;

__attribute__((used)) static void
filemon_dtr(void *data)
{
 struct filemon *filemon = data;

 if (filemon == ((void*)0))
  return;

 sx_xlock(&filemon->lock);



 filemon_untrack_processes(filemon);
 filemon_close_log(filemon);
 filemon_drop(filemon);
}
