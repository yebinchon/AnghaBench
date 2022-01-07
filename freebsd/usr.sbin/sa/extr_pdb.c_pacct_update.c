
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int db_copy_out (int ,int ,char*,int *) ;
 int pacct_db ;
 int pdb_file ;

int
pacct_update(void)
{
 return (db_copy_out(pacct_db, pdb_file, "process accounting",
     ((void*)0)));
}
