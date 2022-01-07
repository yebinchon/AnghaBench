
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* git_pager (int) ;

__attribute__((used)) static const char *pager(int flag)
{
 const char *pgm = git_pager(1);

 if (!pgm)
  pgm = "cat";
 return pgm;
}
