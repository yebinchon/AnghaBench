
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
count_digits(int num)
{
 int ndig;

 for(ndig = 1; num > 9; num /=10, ndig++);

 return (ndig);
}
