
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fts_info; int fts_name; } ;
typedef TYPE_1__ FTSENT ;


 scalar_t__ FTS_D ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
compare(const FTSENT *const *a, const FTSENT *const *b)
{

 if ((*a)->fts_info == FTS_D && (*b)->fts_info != FTS_D)
  return (1);
 if ((*a)->fts_info != FTS_D && (*b)->fts_info == FTS_D)
  return (-1);
 return (strcmp((*a)->fts_name, (*b)->fts_name));
}
