
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {struct g_geom* geom; } ;
struct g_geom {int consumer; } ;
struct g_consumer {scalar_t__ acr; scalar_t__ acw; int ace; } ;


 struct g_consumer* LIST_FIRST (int *) ;
 int g_access (struct g_consumer*,int,int,int) ;

__attribute__((used)) static int
g_bde_access(struct g_provider *pp, int dr, int dw, int de)
{
 struct g_geom *gp;
 struct g_consumer *cp;

 gp = pp->geom;
 cp = LIST_FIRST(&gp->consumer);
 if (cp->acr == 0 && cp->acw == 0 && cp->ace == 0) {
  de++;
  dr++;
 }

 if ((cp->acr + dr) == 0 && (cp->acw + dw) == 0 && (cp->ace + de) == 1) {
  de--;
  dr--;
 }
 return (g_access(cp, dr, dw, de));
}
