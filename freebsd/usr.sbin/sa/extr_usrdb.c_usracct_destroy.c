
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int db_destroy (int ,char*) ;
 int usracct_db ;

void
usracct_destroy(void)
{
 db_destroy(usracct_db, "user accounting");
}
