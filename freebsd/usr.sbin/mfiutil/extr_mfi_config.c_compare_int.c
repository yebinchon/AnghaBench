
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
compare_int(const void *one, const void *two)
{
 int first, second;

 first = *(const int *)one;
 second = *(const int *)two;

 return (first - second);
}
