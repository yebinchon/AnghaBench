
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int xo_emit (char*,...) ;

int
pr_idle(time_t idle)
{

 if (idle >= 36 * 3600) {
  int days = idle / 86400;
  xo_emit(" {:idle/%dday%s} ", days, days > 1 ? "s" : " " );
  if (days >= 100)
   return (2);
  if (days >= 10)
   return (1);
 }


 else if (idle >= 3600)
  xo_emit(" {:idle/%2d:%02d/} ",
      (int)(idle / 3600), (int)((idle % 3600) / 60));

 else if (idle / 60 == 0)
  xo_emit("     - ");


 else
  xo_emit("    {:idle/%2d} ", (int)(idle / 60));

 return (0);
}
