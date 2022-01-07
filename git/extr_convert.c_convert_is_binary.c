
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct text_stat {int printable; int nonprintable; scalar_t__ nul; scalar_t__ lonecr; } ;



__attribute__((used)) static int convert_is_binary(const struct text_stat *stats)
{
 if (stats->lonecr)
  return 1;
 if (stats->nul)
  return 1;
 if ((stats->printable >> 7) < stats->nonprintable)
  return 1;
 return 0;
}
