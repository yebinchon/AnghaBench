
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_desc {scalar_t__ t_type; char* t_name; int t_erbits; int t_dsbits; } ;
struct mtget {int mt_type; int mt_resid; scalar_t__ mt_erreg; scalar_t__ mt_dsreg; } ;


 scalar_t__ MT_ISAR ;
 int printf (char*,...) ;
 int printreg (char*,unsigned short,int ) ;
 int putchar (char) ;
 int st_status (struct mtget*) ;
 struct tape_desc* tapes ;

__attribute__((used)) static void
status(struct mtget *bp)
{
 const struct tape_desc *mt;

 for (mt = tapes;; mt++) {
  if (mt->t_type == 0) {
   (void)printf("%d: unknown tape drive type\n",
       bp->mt_type);
   return;
  }
  if (mt->t_type == bp->mt_type)
   break;
 }
 if(mt->t_type == MT_ISAR)
  st_status(bp);
 else {
  (void)printf("%s tape drive, residual=%d\n",
      mt->t_name, bp->mt_resid);
  printreg("ds", (unsigned short)bp->mt_dsreg, mt->t_dsbits);
  printreg("\ner", (unsigned short)bp->mt_erreg, mt->t_erbits);
  (void)putchar('\n');
 }
}
