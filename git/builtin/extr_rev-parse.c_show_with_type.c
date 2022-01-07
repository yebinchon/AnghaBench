
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putchar (char) ;
 int show (char const*) ;
 int show_type ;

__attribute__((used)) static void show_with_type(int type, const char *arg)
{
 if (type != show_type)
  putchar('^');
 show(arg);
}
