
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int db_destroy (int ,char*) ;
 int pacct_db ;

void
pacct_destroy(void)
{
 db_destroy(pacct_db, "process accounting");
}
