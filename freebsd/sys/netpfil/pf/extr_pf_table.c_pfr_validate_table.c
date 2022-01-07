
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_table {int pfrt_flags; int pfrt_anchor; scalar_t__* pfrt_name; } ;


 int PF_RESERVED_ANCHOR ;
 int PF_TABLE_NAME_SIZE ;
 scalar_t__ pfr_fix_anchor (int ) ;
 int strcmp (int ,int ) ;
 int strlen (scalar_t__*) ;

__attribute__((used)) static int
pfr_validate_table(struct pfr_table *tbl, int allowedflags, int no_reserved)
{
 int i;

 if (!tbl->pfrt_name[0])
  return (-1);
 if (no_reserved && !strcmp(tbl->pfrt_anchor, PF_RESERVED_ANCHOR))
   return (-1);
 if (tbl->pfrt_name[PF_TABLE_NAME_SIZE-1])
  return (-1);
 for (i = strlen(tbl->pfrt_name); i < PF_TABLE_NAME_SIZE; i++)
  if (tbl->pfrt_name[i])
   return (-1);
 if (pfr_fix_anchor(tbl->pfrt_anchor))
  return (-1);
 if (tbl->pfrt_flags & ~allowedflags)
  return (-1);
 return (0);
}
