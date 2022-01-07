
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bdirtylock ;
 scalar_t__ bdirtywait ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (scalar_t__*) ;

__attribute__((used)) static void
bdirtywakeup(void)
{
 mtx_lock(&bdirtylock);
 if (bdirtywait) {
  bdirtywait = 0;
  wakeup(&bdirtywait);
 }
 mtx_unlock(&bdirtylock);
}
