
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct g_part_table {int dummy; } ;
struct g_part_parms {scalar_t__ gpp_codesize; int gpp_skip_dsn; int gpp_codeptr; } ;
struct g_part_mbr_table {scalar_t__ mbr; } ;


 scalar_t__ DOSDSNOFF ;
 int DOSPARTOFF ;
 int ENODEV ;
 scalar_t__ MBRSIZE ;
 int bcopy (int ,scalar_t__,int ) ;

__attribute__((used)) static int
g_part_mbr_bootcode(struct g_part_table *basetable, struct g_part_parms *gpp)
{
 struct g_part_mbr_table *table;
 uint32_t dsn;

 if (gpp->gpp_codesize != MBRSIZE)
  return (ENODEV);

 table = (struct g_part_mbr_table *)basetable;
 dsn = *(uint32_t *)(table->mbr + DOSDSNOFF);
 bcopy(gpp->gpp_codeptr, table->mbr, DOSPARTOFF);
 if (dsn != 0 && !gpp->gpp_skip_dsn)
  *(uint32_t *)(table->mbr + DOSDSNOFF) = dsn;
 return (0);
}
