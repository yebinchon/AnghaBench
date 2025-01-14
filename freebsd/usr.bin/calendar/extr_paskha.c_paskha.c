
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int** cumdaytab ;
 size_t isleap (int) ;
 int j2g (int) ;

int
paskha(int R)
{
 int a, b, c, d, e;
 static int x = 15;
 static int y = 6;
 int *cumday;

 a = R % 19;
 b = R % 4;
 c = R % 7;
 d = (19 * a + x) % 30;
 e = (2 * b + 4 * c + 6 * d + y) % 7;
 cumday = cumdaytab[isleap(R)];
 return (((cumday[3] + 1) + 22) + (d + e) + j2g(R));
}
