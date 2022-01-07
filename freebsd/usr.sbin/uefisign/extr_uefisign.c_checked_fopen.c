
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int assert (int ) ;
 int err (int,char*,char const*) ;
 int * fopen (char const*,char const*) ;

FILE *
checked_fopen(const char *path, const char *mode)
{
 FILE *fp;

 assert(path != ((void*)0));

 fp = fopen(path, mode);
 if (fp == ((void*)0))
  err(1, "%s", path);
 return (fp);
}
