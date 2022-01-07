
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct color {scalar_t__ type; } ;


 scalar_t__ COLOR_NORMAL ;

__attribute__((used)) static int color_empty(const struct color *c)
{
 return c->type <= COLOR_NORMAL;
}
