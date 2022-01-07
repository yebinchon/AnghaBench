
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum git_attr_direction { ____Placeholder_git_attr_direction } git_attr_direction ;


 int BUG (char*) ;
 int GIT_ATTR_INDEX ;
 int direction ;
 int drop_all_attr_stacks () ;
 scalar_t__ is_bare_repository () ;

void git_attr_set_direction(enum git_attr_direction new_direction)
{
 if (is_bare_repository() && new_direction != GIT_ATTR_INDEX)
  BUG("non-INDEX attr direction in a bare repo");

 if (new_direction != direction)
  drop_all_attr_stacks();

 direction = new_direction;
}
