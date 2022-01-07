
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _gdb_cpu_suspend (int,int) ;
 int gdb_lock ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void
gdb_cpu_suspend(int vcpu)
{

 pthread_mutex_lock(&gdb_lock);
 _gdb_cpu_suspend(vcpu, 1);
 pthread_mutex_unlock(&gdb_lock);
}
