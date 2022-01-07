
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int (* seq ) (TYPE_3__*,TYPE_2__*,TYPE_2__*,int) ;} ;
struct TYPE_10__ {int data; } ;
struct TYPE_9__ {int dir; } ;
typedef TYPE_1__ PERSON ;
typedef TYPE_2__ DBT ;


 int R_FIRST ;
 int R_NEXT ;
 int _PATH_FORWARD ;
 int _PATH_PLAN ;
 int _PATH_PROJECT ;
 int _PATH_PUBKEY ;
 TYPE_3__* db ;
 int err (int,char*) ;
 int lprint (TYPE_1__*) ;
 int memmove (TYPE_1__**,int ,int) ;
 int pplan ;
 int printf (char*) ;
 int putchar (char) ;
 int show_text (int ,int ,char*) ;
 int stub1 (TYPE_3__*,TYPE_2__*,TYPE_2__*,int) ;

void
lflag_print(void)
{
 PERSON *pn;
 int sflag, r;
 PERSON *tmp;
 DBT data, key;

 for (sflag = R_FIRST;; sflag = R_NEXT) {
  r = (*db->seq)(db, &key, &data, sflag);
  if (r == -1)
   err(1, "db seq");
  if (r == 1)
   break;
  memmove(&tmp, data.data, sizeof tmp);
  pn = tmp;
  if (sflag != R_FIRST)
   putchar('\n');
  lprint(pn);
  if (!pplan) {
   (void)show_text(pn->dir,
       _PATH_FORWARD, "Mail forwarded to");
   (void)show_text(pn->dir, _PATH_PROJECT, "Project");
   if (!show_text(pn->dir, _PATH_PLAN, "Plan"))
    (void)printf("No Plan.\n");
   (void)show_text(pn->dir,
       _PATH_PUBKEY, "Public key");
  }
 }
}
