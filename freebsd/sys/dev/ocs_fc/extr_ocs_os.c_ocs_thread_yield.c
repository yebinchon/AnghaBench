
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_thread_t ;


 int pause (char*,int) ;

void
ocs_thread_yield(ocs_thread_t *thread) {
 pause("thread yield", 1);
}
