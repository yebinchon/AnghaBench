
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lmpid ;
 int printf (char*,...) ;
 int top_clear () ;

void
i_loadave(int mpid, double avenrun[])
{
    int i;


    top_clear();


    if (mpid != -1)
    {
 printf("last pid: %5d;  ", mpid);
    }

    printf("load averages");

    for (i = 0; i < 3; i++)
    {
 printf("%c %5.2f",
     i == 0 ? ':' : ',',
     avenrun[i]);
    }
    lmpid = mpid;
}
