
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Move_to (int,int ) ;
 int lmpid ;
 int printf (char*,...) ;
 int x_lastpid ;
 int x_loadave ;
 int x_loadave_nompid ;
 int y_lastpid ;
 int y_loadave ;

void
u_loadave(int mpid, double *avenrun)
{
    int i;

    if (mpid != -1)
    {

 if (mpid != lmpid)
 {
     Move_to(x_lastpid, y_lastpid);
     printf("%5d", mpid);
     lmpid = mpid;
 }


 i = x_loadave;
    }
    else
    {
 i = x_loadave_nompid;
    }


    Move_to(i, y_loadave);



    for (i = 0; i < 3; i++)
    {
 printf("%s%5.2f",
     i == 0 ? "" : ", ",
     avenrun[i]);
    }
}
