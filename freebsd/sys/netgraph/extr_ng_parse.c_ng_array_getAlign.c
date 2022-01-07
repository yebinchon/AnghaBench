
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_parse_type {struct ng_parse_array_info* info; } ;
struct ng_parse_array_info {int elementType; } ;


 int ALIGNMENT (int ) ;

__attribute__((used)) static int
ng_array_getAlign(const struct ng_parse_type *type)
{
 const struct ng_parse_array_info *ai = type->info;

 return ALIGNMENT(ai->elementType);
}
