
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 int* buf ;
 int exit (int ) ;
 int printf (char*,int ,int) ;
 int read (int ,int*,int) ;

main()
{
 u_int u = 0;

 while (1) {

  if (512 != read(0, buf, sizeof buf))
   break;

  printf("%u %u\n", u++, buf[0]);
 }
 exit (0);
}
