
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int db_copy_in (int *,int ,char*,int *,int ) ;
 int pacct_db ;
 int pdb_file ;
 int v1_to_v2 ;

int
pacct_init(void)
{
 return (db_copy_in(&pacct_db, pdb_file, "process accounting",
     ((void*)0), v1_to_v2));
}
