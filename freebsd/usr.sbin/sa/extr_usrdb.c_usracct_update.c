
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int compare; } ;
typedef TYPE_1__ BTREEINFO ;


 int bzero (TYPE_1__*,int) ;
 int db_copy_out (int ,int ,char*,TYPE_1__*) ;
 int uid_compare ;
 int usracct_db ;
 int usrdb_file ;

int
usracct_update(void)
{
 BTREEINFO bti;

 bzero(&bti, sizeof bti);
 bti.compare = uid_compare;

 return (db_copy_out(usracct_db, usrdb_file, "user accounting",
     &bti));
}
