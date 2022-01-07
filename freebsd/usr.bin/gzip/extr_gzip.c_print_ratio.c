
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int off_t ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
print_ratio(off_t in, off_t out, FILE *where)
{
 int percent10;
 off_t diff;
 char buff[8];
 int len;

 diff = in - out/2;
 if (in == 0 && out == 0)
  percent10 = 0;
 else if (diff < 0)




  percent10 = -999;
 else {




  while (in > 0x100000) {
   diff >>= 1;
   in >>= 1;
  }
  if (in != 0)
   percent10 = ((u_int)diff * 2000) / (u_int)in - 1000;
  else
   percent10 = 0;
 }

 len = snprintf(buff, sizeof buff, "%2.2d.", percent10);

 buff[len - 1] = buff[len - 2];
 buff[len - 2] = '.';
 fprintf(where, "%5s%%", buff);
}
