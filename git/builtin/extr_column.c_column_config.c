
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int colopts ;
 int git_column_config (char const*,char const*,void*,int *) ;

__attribute__((used)) static int column_config(const char *var, const char *value, void *cb)
{
 return git_column_config(var, value, cb, &colopts);
}
