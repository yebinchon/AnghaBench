#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;
typedef  struct TYPE_26__   TYPE_18__ ;

/* Type definitions */
typedef  int u_long ;
struct TYPE_28__ {TYPE_1__* key; int /*<<< orphan*/  n_keys; } ;
typedef  TYPE_2__ okeymap_t ;
struct TYPE_29__ {struct TYPE_29__* key; int /*<<< orphan*/  flgs; int /*<<< orphan*/  spcl; int /*<<< orphan*/ * map; int /*<<< orphan*/  n_keys; } ;
typedef  TYPE_3__ keymap_t ;
struct TYPE_30__ {int kb_type; int kb_delay1; int kb_delay2; size_t kb_fkeytab_size; TYPE_18__* kb_fkeytab; TYPE_3__* kb_accentmap; TYPE_3__* kb_keymap; int /*<<< orphan*/  kb_flags; int /*<<< orphan*/  kb_config; int /*<<< orphan*/  kb_unit; TYPE_3__* kb_name; int /*<<< orphan*/  kb_index; } ;
typedef  TYPE_4__ keyboard_t ;
struct TYPE_31__ {int kb_type; int /*<<< orphan*/  kb_flags; int /*<<< orphan*/  kb_config; int /*<<< orphan*/  kb_unit; TYPE_3__* kb_name; int /*<<< orphan*/  kb_index; } ;
typedef  TYPE_5__ keyboard_info_t ;
struct TYPE_32__ {int keynum; TYPE_3__ key; } ;
typedef  TYPE_6__ keyarg_t ;
struct TYPE_33__ {size_t keynum; int flen; TYPE_3__* keydef; } ;
typedef  TYPE_7__ fkeyarg_t ;
typedef  TYPE_3__* caddr_t ;
typedef  int /*<<< orphan*/  accentmap_t ;
struct TYPE_27__ {int /*<<< orphan*/  flgs; int /*<<< orphan*/  spcl; int /*<<< orphan*/ * map; } ;
struct TYPE_26__ {int len; TYPE_3__* str; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOIOCTL ; 
#define  GETFKEY 140 
#define  GIO_DEADKEYMAP 139 
#define  GIO_KEYMAP 138 
#define  GIO_KEYMAPENT 137 
#define  KDGETREPEAT 136 
#define  KDGKBINFO 135 
#define  KDGKBTYPE 134 
 int /*<<< orphan*/  MAXFK ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int NUM_KEYS ; 
 int NUM_STATES ; 
#define  OGIO_KEYMAP 133 
#define  OPIO_KEYMAP 132 
#define  PIO_DEADKEYMAP 131 
#define  PIO_KEYMAP 130 
#define  PIO_KEYMAPENT 129 
#define  SETFKEY 128 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int FUNC3 (void*,TYPE_3__*,int) ; 
 int FUNC4 (TYPE_3__*,void*,int) ; 
 int /*<<< orphan*/  curthread ; 
 int FUNC5 (TYPE_18__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,int /*<<< orphan*/ ) ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 

int
FUNC15(keyboard_t *kbd, u_long cmd, caddr_t arg)
{
	keymap_t *mapp;
	okeymap_t *omapp;
	keyarg_t *keyp;
	fkeyarg_t *fkeyp;
	int s;
	int i, j;
	int error;

	s = FUNC12();
	switch (cmd) {

	case KDGKBINFO:		/* get keyboard information */
		((keyboard_info_t *)arg)->kb_index = kbd->kb_index;
		i = FUNC7(FUNC14(kbd->kb_name) + 1,
		    sizeof(((keyboard_info_t *)arg)->kb_name));
		FUNC1(kbd->kb_name, ((keyboard_info_t *)arg)->kb_name, i);
		((keyboard_info_t *)arg)->kb_unit = kbd->kb_unit;
		((keyboard_info_t *)arg)->kb_type = kbd->kb_type;
		((keyboard_info_t *)arg)->kb_config = kbd->kb_config;
		((keyboard_info_t *)arg)->kb_flags = kbd->kb_flags;
		break;

	case KDGKBTYPE:		/* get keyboard type */
		*(int *)arg = kbd->kb_type;
		break;

	case KDGETREPEAT:	/* get keyboard repeat rate */
		((int *)arg)[0] = kbd->kb_delay1;
		((int *)arg)[1] = kbd->kb_delay2;
		break;

	case GIO_KEYMAP:	/* get keyboard translation table */
		error = FUNC4(kbd->kb_keymap, *(void **)arg,
		    sizeof(keymap_t));
		FUNC13(s);
		return (error);
	case OGIO_KEYMAP:	/* get keyboard translation table (compat) */
		mapp = kbd->kb_keymap;
		omapp = (okeymap_t *)arg;
		omapp->n_keys = mapp->n_keys;
		for (i = 0; i < NUM_KEYS; i++) {
			for (j = 0; j < NUM_STATES; j++)
				omapp->key[i].map[j] =
				    mapp->key[i].map[j];
			omapp->key[i].spcl = mapp->key[i].spcl;
			omapp->key[i].flgs = mapp->key[i].flgs;
		}
		break;
	case PIO_KEYMAP:	/* set keyboard translation table */
	case OPIO_KEYMAP:	/* set keyboard translation table (compat) */
#ifndef KBD_DISABLE_KEYMAP_LOAD
		mapp = FUNC10(sizeof *mapp, M_TEMP, M_WAITOK);
		if (cmd == OPIO_KEYMAP) {
			omapp = (okeymap_t *)arg;
			mapp->n_keys = omapp->n_keys;
			for (i = 0; i < NUM_KEYS; i++) {
				for (j = 0; j < NUM_STATES; j++)
					mapp->key[i].map[j] =
					    omapp->key[i].map[j];
				mapp->key[i].spcl = omapp->key[i].spcl;
				mapp->key[i].flgs = omapp->key[i].flgs;
			}
		} else {
			error = FUNC3(*(void **)arg, mapp, sizeof *mapp);
			if (error != 0) {
				FUNC13(s);
				FUNC6(mapp, M_TEMP);
				return (error);
			}
		}

		error = FUNC9(kbd->kb_keymap, mapp, curthread);
		if (error != 0) {
			FUNC13(s);
			FUNC6(mapp, M_TEMP);
			return (error);
		}
		FUNC2(kbd->kb_accentmap, sizeof(*kbd->kb_accentmap));
		FUNC1(mapp, kbd->kb_keymap, sizeof(*kbd->kb_keymap));
		FUNC6(mapp, M_TEMP);
		break;
#else
		splx(s);
		return (ENODEV);
#endif

	case GIO_KEYMAPENT:	/* get keyboard translation table entry */
		keyp = (keyarg_t *)arg;
		if (keyp->keynum >= sizeof(kbd->kb_keymap->key) /
		    sizeof(kbd->kb_keymap->key[0])) {
			FUNC13(s);
			return (EINVAL);
		}
		FUNC1(&kbd->kb_keymap->key[keyp->keynum], &keyp->key,
		    sizeof(keyp->key));
		break;
	case PIO_KEYMAPENT:	/* set keyboard translation table entry */
#ifndef KBD_DISABLE_KEYMAP_LOAD
		keyp = (keyarg_t *)arg;
		if (keyp->keynum >= sizeof(kbd->kb_keymap->key) /
		    sizeof(kbd->kb_keymap->key[0])) {
			FUNC13(s);
			return (EINVAL);
		}
		error = FUNC8(&kbd->kb_keymap->key[keyp->keynum],
		    &keyp->key, curthread);
		if (error != 0) {
			FUNC13(s);
			return (error);
		}
		FUNC1(&keyp->key, &kbd->kb_keymap->key[keyp->keynum],
		    sizeof(keyp->key));
		break;
#else
		splx(s);
		return (ENODEV);
#endif

	case GIO_DEADKEYMAP:	/* get accent key translation table */
		FUNC1(kbd->kb_accentmap, arg, sizeof(*kbd->kb_accentmap));
		break;
	case PIO_DEADKEYMAP:	/* set accent key translation table */
#ifndef KBD_DISABLE_KEYMAP_LOAD
		error = FUNC0(kbd->kb_accentmap,
		    (accentmap_t *)arg, curthread);
		if (error != 0) {
			FUNC13(s);
			return (error);
		}
		FUNC1(arg, kbd->kb_accentmap, sizeof(*kbd->kb_accentmap));
		break;
#else
		splx(s);
		return (ENODEV);
#endif

	case GETFKEY:		/* get functionkey string */
		fkeyp = (fkeyarg_t *)arg;
		if (fkeyp->keynum >= kbd->kb_fkeytab_size) {
			FUNC13(s);
			return (EINVAL);
		}
		FUNC1(kbd->kb_fkeytab[fkeyp->keynum].str, fkeyp->keydef,
		    kbd->kb_fkeytab[fkeyp->keynum].len);
		fkeyp->flen = kbd->kb_fkeytab[fkeyp->keynum].len;
		break;
	case SETFKEY:		/* set functionkey string */
#ifndef KBD_DISABLE_KEYMAP_LOAD
		fkeyp = (fkeyarg_t *)arg;
		if (fkeyp->keynum >= kbd->kb_fkeytab_size) {
			FUNC13(s);
			return (EINVAL);
		}
		error = FUNC5(&kbd->kb_fkeytab[fkeyp->keynum],
		    fkeyp, curthread);
		if (error != 0) {
			FUNC13(s);
			return (error);
		}
		kbd->kb_fkeytab[fkeyp->keynum].len = FUNC11(fkeyp->flen, MAXFK);
		FUNC1(fkeyp->keydef, kbd->kb_fkeytab[fkeyp->keynum].str,
		    kbd->kb_fkeytab[fkeyp->keynum].len);
		break;
#else
		splx(s);
		return (ENODEV);
#endif

	default:
		FUNC13(s);
		return (ENOIOCTL);
	}

	FUNC13(s);
	return (0);
}