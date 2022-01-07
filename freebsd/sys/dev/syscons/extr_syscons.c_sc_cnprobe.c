
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {void* cn_pri; int cn_name; } ;


 void* CN_DEAD ;
 int TRUE ;
 int VTY_SC ;
 void* sc_get_cons_priority (int*,int*) ;
 int sckbdprobe (int,int,int ) ;
 int scvidprobe (int,int,int ) ;
 int strcpy (int ,char*) ;
 int vty_enabled (int ) ;

__attribute__((used)) static void
sc_cnprobe(struct consdev *cp)
{
    int unit;
    int flags;

    if (!vty_enabled(VTY_SC)) {
 cp->cn_pri = CN_DEAD;
 return;
    }

    cp->cn_pri = sc_get_cons_priority(&unit, &flags);


    if (!scvidprobe(unit, flags, TRUE))
 cp->cn_pri = CN_DEAD;


    sckbdprobe(unit, flags, TRUE);

    if (cp->cn_pri == CN_DEAD)
 return;


    strcpy(cp->cn_name, "ttyv0");
}
