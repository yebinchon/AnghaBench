#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
struct tty {int dummy; } ;
struct TYPE_8__ {int keyboard; TYPE_3__* cur_scp; int /*<<< orphan*/ * kbd; } ;
typedef  TYPE_2__ sc_softc_t ;
typedef  int /*<<< orphan*/  keyboard_t ;
struct TYPE_9__ {int /*<<< orphan*/  status; TYPE_1__* tsw; int /*<<< orphan*/  index; } ;
struct TYPE_7__ {char* (* te_fkeystr ) (TYPE_3__*,int) ;scalar_t__ (* te_input ) (TYPE_3__*,int,struct tty*) ;} ;

/* Variables and functions */
#define  BKEY 132 
 int EINVAL ; 
#define  FKEY 131 
 int /*<<< orphan*/  Giant ; 
#define  KBDIO_KEYINPUT 130 
#define  KBDIO_UNLOADING 129 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
#define  MKEY 128 
 int /*<<< orphan*/  MOUSE_HIDDEN ; 
 int NOKEY ; 
 int /*<<< orphan*/  SCGETC_NONBLOCK ; 
 struct tty* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (TYPE_3__*,int,struct tty*) ; 
 char* FUNC10 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct tty*) ; 
 int /*<<< orphan*/  FUNC12 (struct tty*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct tty*) ; 
 int /*<<< orphan*/  FUNC14 (struct tty*,char const*,int) ; 

__attribute__((used)) static int
FUNC15(keyboard_t *thiskbd, int event, void *arg)
{
    sc_softc_t *sc;
    struct tty *cur_tty;
    int c, error = 0; 
    size_t len;
    const u_char *cp;

    sc = (sc_softc_t *)arg;
    /* assert(thiskbd == sc->kbd) */

    FUNC5(&Giant);

    switch (event) {
    case KBDIO_KEYINPUT:
	break;
    case KBDIO_UNLOADING:
	sc->kbd = NULL;
	sc->keyboard = -1;
	FUNC3(thiskbd, (void *)&sc->keyboard);
	goto done;
    default:
	error = EINVAL;
	goto done;
    }

    /* 
     * Loop while there is still input to get from the keyboard.
     * I don't think this is nessesary, and it doesn't fix
     * the Xaccel-2.1 keyboard hang, but it can't hurt.		XXX
     */
    while ((c = FUNC7(sc, SCGETC_NONBLOCK, NULL)) != NOKEY) {

	cur_tty = FUNC2(sc, sc->cur_scp->index);
	if (!FUNC11(cur_tty))
	    continue;

	if ((*sc->cur_scp->tsw->te_input)(sc->cur_scp, c, cur_tty))
	    continue;

	switch (FUNC1(c)) {
	case 0x0000: /* normal key */
	    FUNC12(cur_tty, FUNC0(c), 0);
	    break;
	case FKEY:  /* function key, return string */
	    cp = (*sc->cur_scp->tsw->te_fkeystr)(sc->cur_scp, c);
	    if (cp != NULL) {
	    	FUNC14(cur_tty, cp, FUNC8(cp));
		break;
	    }
	    cp = FUNC4(thiskbd, FUNC0(c), &len);
	    if (cp != NULL)
	    	FUNC14(cur_tty, cp, len);
	    break;
	case MKEY:  /* meta is active, prepend ESC */
	    FUNC12(cur_tty, 0x1b, 0);
	    FUNC12(cur_tty, FUNC0(c), 0);
	    break;
	case BKEY:  /* backtab fixed sequence (esc [ Z) */
	    FUNC14(cur_tty, "\x1B[Z", 3);
	    break;
	}

	FUNC13(cur_tty);
    }

    sc->cur_scp->status |= MOUSE_HIDDEN;

done:
    FUNC6(&Giant);
    return (error);
}