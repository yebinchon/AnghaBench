
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_ctx {int tc_fl; int tc_fd; } ;


 int F_SETLKW ;
 uintptr_t fcntl (int ,int ,int *) ;
 int pthread_exit (void*) ;

__attribute__((used)) static void *
test16_func(void *tc_in)
{
 uintptr_t error;
 struct test_ctx *tc = tc_in;

 error = fcntl(tc->tc_fd, F_SETLKW, &tc->tc_fl);

 pthread_exit((void *)error);
}
