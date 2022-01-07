
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct cmdinfo {int ci_calls; int ci_flags; int compare; int ci_comm; } ;
struct TYPE_6__ {int size; struct cmdinfo* data; } ;
typedef TYPE_1__ DBT ;
typedef int DB ;
typedef struct cmdinfo BTREEINFO ;


 int CI_UNPRINTABLE ;
 int DB_BTREE ;
 int DB_CLOSE (int *) ;
 int DB_PUT (int *,TYPE_1__*,TYPE_1__*,int ) ;
 int DB_SEQ (int *,TYPE_1__*,TYPE_1__*,int ) ;
 int O_RDWR ;
 int R_FIRST ;
 int R_LAST ;
 int R_NEXT ;
 int R_PREV ;
 int add_ci (struct cmdinfo*,struct cmdinfo*) ;
 int aflag ;
 int bcopy (struct cmdinfo*,struct cmdinfo*,int) ;
 int bzero (struct cmdinfo*,int) ;
 scalar_t__ check_junk (struct cmdinfo*) ;
 int cutoff ;
 int * dbopen (int *,int ,int ,int ,struct cmdinfo*) ;
 scalar_t__ fflag ;
 int * pacct_db ;
 int print_ci (struct cmdinfo*,struct cmdinfo*) ;
 scalar_t__ rflag ;
 int sa_cmp ;
 int strcpy (int ,char*) ;
 scalar_t__ vflag ;
 int warn (char*) ;

void
pacct_print(void)
{
 BTREEINFO bti;
 DBT key, data, ndata;
 DB *output_pacct_db;
 struct cmdinfo *cip, ci, ci_total, ci_other, ci_junk;
 int rv;

 bzero(&ci_total, sizeof ci_total);
 strcpy(ci_total.ci_comm, "");
 bzero(&ci_other, sizeof ci_other);
 strcpy(ci_other.ci_comm, "***other");
 bzero(&ci_junk, sizeof ci_junk);
 strcpy(ci_junk.ci_comm, "**junk**");





 bzero(&bti, sizeof bti);
 bti.compare = sa_cmp;
 output_pacct_db = dbopen(((void*)0), O_RDWR, 0, DB_BTREE, &bti);
 if (output_pacct_db == ((void*)0)) {
  warn("couldn't sort process accounting stats");
  return;
 }

 ndata.data = ((void*)0);
 ndata.size = 0;
 rv = DB_SEQ(pacct_db, &key, &data, R_FIRST);
 if (rv < 0)
  warn("retrieving process accounting stats");
 while (rv == 0) {
  cip = (struct cmdinfo *) data.data;
  bcopy(cip, &ci, sizeof ci);


  add_ci(&ci, &ci_total);

  if (vflag && ci.ci_calls <= cutoff &&
      (fflag || check_junk(&ci))) {

   add_ci(&ci, &ci_junk);
   goto next;
  }
  if (!aflag &&
      ((ci.ci_flags & CI_UNPRINTABLE) != 0 || ci.ci_calls <= 1)) {

   add_ci(&ci, &ci_other);
   goto next;
  }
  rv = DB_PUT(output_pacct_db, &data, &ndata, 0);
  if (rv < 0)
   warn("sorting process accounting stats");

next: rv = DB_SEQ(pacct_db, &key, &data, R_NEXT);
  if (rv < 0)
   warn("retrieving process accounting stats");
 }


 if (ci_junk.ci_calls != 0) {
  data.data = &ci_junk;
  data.size = sizeof ci_junk;
  rv = DB_PUT(output_pacct_db, &data, &ndata, 0);
  if (rv < 0)
   warn("sorting process accounting stats");
 }
 if (ci_other.ci_calls != 0) {
  data.data = &ci_other;
  data.size = sizeof ci_other;
  rv = DB_PUT(output_pacct_db, &data, &ndata, 0);
  if (rv < 0)
   warn("sorting process accounting stats");
 }


 print_ci(&ci_total, &ci_total);


 rv = DB_SEQ(output_pacct_db, &data, &ndata, rflag ? R_FIRST : R_LAST);
 if (rv < 0)
  warn("retrieving process accounting report");
 while (rv == 0) {
  cip = (struct cmdinfo *) data.data;
  bcopy(cip, &ci, sizeof ci);

  print_ci(&ci, &ci_total);

  rv = DB_SEQ(output_pacct_db, &data, &ndata,
      rflag ? R_NEXT : R_PREV);
  if (rv < 0)
   warn("retrieving process accounting report");
 }
 DB_CLOSE(output_pacct_db);
}
