
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fts_name; } ;
typedef TYPE_1__ FTSENT ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
nsort(const FTSENT * const *a, const FTSENT * const *b)
{
 return (strcmp((*a)->fts_name, (*b)->fts_name));
}
