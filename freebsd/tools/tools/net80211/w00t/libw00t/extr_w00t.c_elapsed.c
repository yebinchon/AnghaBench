
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;


 int assert (int) ;

int elapsed(struct timeval *past, struct timeval *now)
{
        int el;

        el = now->tv_sec - past->tv_sec;
        assert(el >= 0);
        if (el == 0) {
                el = now->tv_usec - past->tv_usec;
        } else {
                el = (el - 1)*1000*1000;
                el += 1000*1000-past->tv_usec;
                el += now->tv_usec;
        }

        return el;
}
