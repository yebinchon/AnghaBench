
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMPARE_ARRAYS (int*,int*,int) ;

__attribute__((used)) static int
compare_secflavor(int *sec1, int *sec2, int nsec)
{

 COMPARE_ARRAYS(sec1, sec2, nsec);
}
