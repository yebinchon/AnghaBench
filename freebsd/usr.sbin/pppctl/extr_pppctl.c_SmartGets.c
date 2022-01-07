
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EditLine ;


 int data ;
 char* el_gets (int *,int*) ;
 int pppdead ;
 int sem_post (int *) ;
 int sem_select ;
 scalar_t__ setjmp (int ) ;
 scalar_t__ want_sem_post ;

__attribute__((used)) static const char *
SmartGets(EditLine *e, int *count, int fd)
{
    const char *result;

    if (setjmp(pppdead))
        result = ((void*)0);
    else {
        data = fd;
        if (want_sem_post)

            sem_post(&sem_select);
        result = el_gets(e, count);
    }

    data = -1;

    return result;
}
