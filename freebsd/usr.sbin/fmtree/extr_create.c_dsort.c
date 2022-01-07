
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int fts_name; TYPE_1__* fts_statp; } ;
struct TYPE_5__ {int st_mode; } ;
typedef TYPE_2__ FTSENT ;


 scalar_t__ S_ISDIR (int ) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
dsort(const FTSENT * const *a, const FTSENT * const *b)
{
 if (S_ISDIR((*a)->fts_statp->st_mode)) {
  if (!S_ISDIR((*b)->fts_statp->st_mode))
   return (1);
 } else if (S_ISDIR((*b)->fts_statp->st_mode))
  return (-1);
 return (strcmp((*a)->fts_name, (*b)->fts_name));
}
