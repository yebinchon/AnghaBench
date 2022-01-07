
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* delays ;

__attribute__((used)) static int
typematic_delay(int i)
{
 return (delays[(i >> 5) & 3]);
}
