
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 scalar_t__* buf ;
 int exit (int ) ;
 int write (int,scalar_t__*,int) ;

main()
{
 u_int u = 0;

 while (1) {
  buf[0] = u++;

  if (512 != write(1, buf, sizeof buf))
   break;
 }
 exit (0);
}
