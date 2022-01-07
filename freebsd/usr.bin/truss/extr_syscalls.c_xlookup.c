
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlat {int dummy; } ;


 char const* lookup (struct xlat*,int,int) ;

__attribute__((used)) static const char *
xlookup(struct xlat *xlat, int val)
{

 return (lookup(xlat, val, 16));
}
