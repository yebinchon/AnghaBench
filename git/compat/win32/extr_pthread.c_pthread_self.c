
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tid; int * member_0; } ;
typedef TYPE_1__ pthread_t ;


 int GetCurrentThreadId () ;

pthread_t pthread_self(void)
{
 pthread_t t = { ((void*)0) };
 t.tid = GetCurrentThreadId();
 return t;
}
