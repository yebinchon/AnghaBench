
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; } ;


 TYPE_1__** archivers ;
 scalar_t__ match_extension (char const*,char const*) ;
 int nr_archivers ;

const char *archive_format_from_filename(const char *filename)
{
 int i;

 for (i = 0; i < nr_archivers; i++)
  if (match_extension(filename, archivers[i]->name))
   return archivers[i]->name;
 return ((void*)0);
}
