
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env {char* str; } ;


 int SLIST_INSERT_HEAD (int *,struct env*,int ) ;
 int envhead ;
 struct env* malloc (int) ;
 int next ;

__attribute__((used)) static void
addenv(char *str)
{
 struct env *env;

 env = malloc(sizeof(struct env));
 env->str = str;
 SLIST_INSERT_HEAD(&envhead, env, next);
}
