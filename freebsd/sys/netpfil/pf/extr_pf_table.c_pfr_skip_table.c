
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_table {int pfrt_anchor; } ;
struct pfr_ktable {int pfrkt_anchor; } ;


 int PFR_FLAG_ALLRSETS ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
pfr_skip_table(struct pfr_table *filter, struct pfr_ktable *kt, int flags)
{
 if (flags & PFR_FLAG_ALLRSETS)
  return (0);
 if (strcmp(filter->pfrt_anchor, kt->pfrkt_anchor))
  return (1);
 return (0);
}
