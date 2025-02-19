
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct g_part_table {int dummy; } ;
struct g_part_parms {scalar_t__ gpp_codesize; int * gpp_codeptr; } ;
struct g_part_bsd_table {int bbarea; } ;


 scalar_t__ BBSIZE ;
 scalar_t__ BOOT1_SIZE ;
 int BOOT2_OFF ;
 scalar_t__ BOOT2_SIZE ;
 int ENODEV ;
 int bcopy (int const*,int,scalar_t__) ;

__attribute__((used)) static int
g_part_bsd_bootcode(struct g_part_table *basetable, struct g_part_parms *gpp)
{
 struct g_part_bsd_table *table;
 const u_char *codeptr;

 if (gpp->gpp_codesize != BOOT1_SIZE && gpp->gpp_codesize != BBSIZE)
  return (ENODEV);

 table = (struct g_part_bsd_table *)basetable;
 codeptr = gpp->gpp_codeptr;
 bcopy(codeptr, table->bbarea, BOOT1_SIZE);
 if (gpp->gpp_codesize == BBSIZE)
  bcopy(codeptr + BOOT2_OFF, table->bbarea + BOOT2_OFF,
      BOOT2_SIZE);
 return (0);
}
