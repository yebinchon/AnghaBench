
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_1__ ucl_object_t ;
typedef int * ucl_object_iter_t ;


 int CONFFILE_REPO ;
 scalar_t__ UCL_OBJECT ;
 int config_parse (TYPE_1__ const*,int ) ;
 TYPE_1__* ucl_iterate_object (TYPE_1__*,int **,int) ;
 char* ucl_object_key (TYPE_1__ const*) ;

__attribute__((used)) static void
parse_repo_file(ucl_object_t *obj)
{
 ucl_object_iter_t it = ((void*)0);
 const ucl_object_t *cur;
 const char *key;

 while ((cur = ucl_iterate_object(obj, &it, 1))) {
  key = ucl_object_key(cur);

  if (key == ((void*)0))
   continue;

  if (cur->type != UCL_OBJECT)
   continue;

  config_parse(cur, CONFFILE_REPO);
 }
}
