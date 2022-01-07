
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct s_command {scalar_t__ t; } ;
struct labhash {int lh_hash; scalar_t__ lh_ref; struct s_command* lh_cmd; struct labhash* lh_next; } ;


 int LHMASK ;
 int err (int,char*) ;
 int errx (int,char*,int ,int ,scalar_t__) ;
 int fname ;
 struct labhash** labels ;
 int linenum ;
 struct labhash* malloc (int) ;
 scalar_t__ strcmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
enterlabel(struct s_command *cp)
{
 struct labhash **lhp, *lh;
 u_char *p;
 u_int h, c;

 for (h = 0, p = (u_char *)cp->t; (c = *p) != 0; p++)
  h = (h << 5) + h + c;
 lhp = &labels[h & LHMASK];
 for (lh = *lhp; lh != ((void*)0); lh = lh->lh_next)
  if (lh->lh_hash == h && strcmp(cp->t, lh->lh_cmd->t) == 0)
   errx(1, "%lu: %s: duplicate label '%s'", linenum, fname, cp->t);
 if ((lh = malloc(sizeof *lh)) == ((void*)0))
  err(1, "malloc");
 lh->lh_next = *lhp;
 lh->lh_hash = h;
 lh->lh_cmd = cp;
 lh->lh_ref = 0;
 *lhp = lh;
}
