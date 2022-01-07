
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uintmax_t ;
struct userinfo {int ui_calls; int ui_utime; int ui_stime; int ui_io; double ui_mem; int ui_uid; } ;
struct TYPE_4__ {int data; } ;
typedef TYPE_1__ DBT ;


 int DB_SEQ (int ,TYPE_1__*,TYPE_1__*,int ) ;
 char* MAXLOGNAME ;
 int R_FIRST ;
 int R_NEXT ;
 scalar_t__ dflag ;
 scalar_t__ kflag ;
 int memcpy (struct userinfo*,int ,int) ;
 int printf (char*,...) ;
 int user_from_uid (int ,int ) ;
 int usracct_db ;
 int warn (char*) ;

void
usracct_print(void)
{
 DBT key, data;
 struct userinfo uistore, *ui = &uistore;
 double t;
 int rv;

 rv = DB_SEQ(usracct_db, &key, &data, R_FIRST);
 if (rv < 0)
  warn("retrieving user accounting stats");

 while (rv == 0) {
  memcpy(ui, data.data, sizeof(struct userinfo));

  printf("%-*s %9ju ", MAXLOGNAME - 1,
      user_from_uid(ui->ui_uid, 0), (uintmax_t)ui->ui_calls);

  t = (ui->ui_utime + ui->ui_stime) / 1000000;
  if (t < 0.000001)
   t = 0.000001;

  printf("%12.2f%s ", t / 60.0, "cpu");


  if (dflag)
   printf("%12.0f%s",
       ui->ui_io / ui->ui_calls, "avio");
  else
   printf("%12.0f%s", ui->ui_io, "tio");


  if (kflag)
   printf("%12.0f%s", ui->ui_mem / t, "k");
  else
   printf("%12.0f%s", ui->ui_mem, "k*sec");

  printf("\n");

  rv = DB_SEQ(usracct_db, &key, &data, R_NEXT);
  if (rv < 0)
   warn("retrieving user accounting stats");
 }
}
