
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
struct sc_cnstate {scalar_t__ scr_opened; } ;
struct fkeytab {int len; int* str; } ;
struct TYPE_10__ {TYPE_5__* sc; TYPE_2__* tsw; } ;
typedef TYPE_3__ scr_stat ;
struct TYPE_12__ {TYPE_1__* sc; } ;
struct TYPE_11__ {int kbd; } ;
struct TYPE_9__ {int * (* te_fkeystr ) (TYPE_3__*,int) ;} ;
struct TYPE_8__ {TYPE_3__* cur_scp; } ;




 int KEYCHAR (int) ;
 int KEYFLAGS (int) ;

 int SCGETC_CN ;
 int SCGETC_NONBLOCK ;
 int bcopy (int const*,int*,int) ;
 int * kbdd_get_fkeystr (int ,int,size_t*) ;
 TYPE_7__* sc_console ;
 int sc_touch_scrn_saver () ;
 int sccnupdate (TYPE_3__*) ;
 int scgetc (TYPE_5__*,int,struct sc_cnstate*) ;
 int strlen (int const*) ;
 int * stub1 (TYPE_3__*,int) ;

__attribute__((used)) static int
sc_cngetc_locked(struct sc_cnstate *sp)
{
    static struct fkeytab fkey;
    static int fkeycp;
    scr_stat *scp;
    const u_char *p;
    int c;





    if (sp->scr_opened)
 sc_touch_scrn_saver();
    scp = sc_console->sc->cur_scp;
    if (sp->scr_opened)
 sccnupdate(scp);

    if (fkeycp < fkey.len)
 return fkey.str[fkeycp++];

    c = scgetc(scp->sc, SCGETC_CN | SCGETC_NONBLOCK, sp);

    switch (KEYFLAGS(c)) {
    case 0:
 return KEYCHAR(c);
    case 129:
 p = (*scp->tsw->te_fkeystr)(scp, c);
 if (p != ((void*)0)) {
     fkey.len = strlen(p);
     bcopy(p, fkey.str, fkey.len);
     fkeycp = 1;
     return fkey.str[0];
 }
 p = kbdd_get_fkeystr(scp->sc->kbd, KEYCHAR(c), (size_t *)&fkeycp);
 fkey.len = fkeycp;
 if ((p != ((void*)0)) && (fkey.len > 0)) {
     bcopy(p, fkey.str, fkey.len);
     fkeycp = 1;
     return fkey.str[0];
 }
 return c;
    case 128:
    case 130:
    default:
 return -1;
    }

}
