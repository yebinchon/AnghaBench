
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int UINT16 ;


 int CLOCKS_PER_SEC ;
 int clock () ;

time_t time(time_t *t)
{
    UINT16 ret;


    ret = clock() / CLOCKS_PER_SEC;

    if (t)
 *t = ret;

    return ret;
}
