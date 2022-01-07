
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* rates ;

__attribute__((used)) static int
typematic_rate(int i)
{
 return (rates[i & 0x1f]);
}
