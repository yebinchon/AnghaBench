
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char u_char ;
struct tty {int dummy; } ;
struct TYPE_8__ {int keyboard; TYPE_3__* cur_scp; int * kbd; } ;
typedef TYPE_2__ sc_softc_t ;
typedef int keyboard_t ;
struct TYPE_9__ {int status; TYPE_1__* tsw; int index; } ;
struct TYPE_7__ {char* (* te_fkeystr ) (TYPE_3__*,int) ;scalar_t__ (* te_input ) (TYPE_3__*,int,struct tty*) ;} ;



 int EINVAL ;

 int Giant ;


 int KEYCHAR (int) ;
 int KEYFLAGS (int) ;

 int MOUSE_HIDDEN ;
 int NOKEY ;
 int SCGETC_NONBLOCK ;
 struct tty* SC_DEV (TYPE_2__*,int ) ;
 int kbd_release (int *,void*) ;
 char* kbdd_get_fkeystr (int *,int,size_t*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int scgetc (TYPE_2__*,int ,int *) ;
 int strlen (char const*) ;
 scalar_t__ stub1 (TYPE_3__*,int,struct tty*) ;
 char* stub2 (TYPE_3__*,int) ;
 int tty_opened_ns (struct tty*) ;
 int ttydisc_rint (struct tty*,int,int ) ;
 int ttydisc_rint_done (struct tty*) ;
 int ttydisc_rint_simple (struct tty*,char const*,int) ;

__attribute__((used)) static int
sckbdevent(keyboard_t *thiskbd, int event, void *arg)
{
    sc_softc_t *sc;
    struct tty *cur_tty;
    int c, error = 0;
    size_t len;
    const u_char *cp;

    sc = (sc_softc_t *)arg;


    mtx_lock(&Giant);

    switch (event) {
    case 130:
 break;
    case 129:
 sc->kbd = ((void*)0);
 sc->keyboard = -1;
 kbd_release(thiskbd, (void *)&sc->keyboard);
 goto done;
    default:
 error = EINVAL;
 goto done;
    }






    while ((c = scgetc(sc, SCGETC_NONBLOCK, ((void*)0))) != NOKEY) {

 cur_tty = SC_DEV(sc, sc->cur_scp->index);
 if (!tty_opened_ns(cur_tty))
     continue;

 if ((*sc->cur_scp->tsw->te_input)(sc->cur_scp, c, cur_tty))
     continue;

 switch (KEYFLAGS(c)) {
 case 0x0000:
     ttydisc_rint(cur_tty, KEYCHAR(c), 0);
     break;
 case 131:
     cp = (*sc->cur_scp->tsw->te_fkeystr)(sc->cur_scp, c);
     if (cp != ((void*)0)) {
      ttydisc_rint_simple(cur_tty, cp, strlen(cp));
  break;
     }
     cp = kbdd_get_fkeystr(thiskbd, KEYCHAR(c), &len);
     if (cp != ((void*)0))
      ttydisc_rint_simple(cur_tty, cp, len);
     break;
 case 128:
     ttydisc_rint(cur_tty, 0x1b, 0);
     ttydisc_rint(cur_tty, KEYCHAR(c), 0);
     break;
 case 132:
     ttydisc_rint_simple(cur_tty, "\x1B[Z", 3);
     break;
 }

 ttydisc_rint_done(cur_tty);
    }

    sc->cur_scp->status |= MOUSE_HIDDEN;

done:
    mtx_unlock(&Giant);
    return (error);
}
