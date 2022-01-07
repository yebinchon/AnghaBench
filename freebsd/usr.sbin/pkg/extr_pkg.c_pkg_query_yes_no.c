
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int fflush (int ) ;
 int getchar () ;
 int stdout ;

__attribute__((used)) static int
pkg_query_yes_no(void)
{
 int ret, c;

 fflush(stdout);
 c = getchar();

 if (c == 'y' || c == 'Y')
  ret = 1;
 else
  ret = 0;

 while (c != '\n' && c != EOF)
  c = getchar();

 return (ret);
}
