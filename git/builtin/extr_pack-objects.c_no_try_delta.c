
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct attr_check {TYPE_1__* items; } ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int value; } ;


 scalar_t__ ATTR_FALSE (int ) ;
 struct attr_check* attr_check_initl (char*,int *) ;
 int git_check_attr (int ,char const*,struct attr_check*) ;
 TYPE_2__* the_repository ;

__attribute__((used)) static int no_try_delta(const char *path)
{
 static struct attr_check *check;

 if (!check)
  check = attr_check_initl("delta", ((void*)0));
 git_check_attr(the_repository->index, path, check);
 if (ATTR_FALSE(check->items[0].value))
  return 1;
 return 0;
}
