
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int round_to(int n, int l)
{
 return ((n + l - 1)/l)*l;
}
