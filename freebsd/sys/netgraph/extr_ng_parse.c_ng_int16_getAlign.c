
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_parse_type {int dummy; } ;


 int INT16_ALIGNMENT ;

__attribute__((used)) static int
ng_int16_getAlign(const struct ng_parse_type *type)
{
 return INT16_ALIGNMENT;
}
