
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bi_esymtab; int bi_symtab; } ;


 int KDB_WHY_BOOTFLAGS ;
 int RB_KDB ;
 int boothowto ;
 TYPE_1__ bootinfo ;
 int db_fetch_ksymtab (int ,int ) ;
 int kdb_enter (int ,char*) ;
 int kdb_init () ;

__attribute__((used)) static void
i386_kdb_init(void)
{



 kdb_init();




}
