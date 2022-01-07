
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*) ;
 int quote_c_style (char const*,int *,int *,int ) ;
 int * stdout ;
 scalar_t__ strchr (char const*,char) ;

__attribute__((used)) static void print_path_1(const char *path)
{
 int need_quote = quote_c_style(path, ((void*)0), ((void*)0), 0);
 if (need_quote)
  quote_c_style(path, ((void*)0), stdout, 0);
 else if (strchr(path, ' '))
  printf("\"%s\"", path);
 else
  printf("%s", path);
}
