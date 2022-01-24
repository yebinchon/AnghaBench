#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct secasvar {int flags; TYPE_2__* lft_s; TYPE_2__* lft_h; TYPE_2__* replay; TYPE_2__* key_enc; TYPE_2__* key_auth; TYPE_1__* tdb_xform; TYPE_2__* natt; } ;
struct TYPE_6__ {struct TYPE_6__* bitmap; struct TYPE_6__* key_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* xf_zeroize ) (struct secasvar*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  M_IPSEC_MISC ; 
 int SADB_X_EXT_F_CLONED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct secasvar*) ; 

__attribute__((used)) static void
FUNC4(struct secasvar *sav)
{

	if (sav->natt != NULL) {
		FUNC2(sav->natt, M_IPSEC_MISC);
		sav->natt = NULL;
	}
	if (sav->flags & SADB_X_EXT_F_CLONED)
		return;
	/*
	 * Cleanup xform state.  Note that zeroize'ing causes the
	 * keys to be cleared; otherwise we must do it ourself.
	 */
	if (sav->tdb_xform != NULL) {
		sav->tdb_xform->xf_zeroize(sav);
		sav->tdb_xform = NULL;
	} else {
		if (sav->key_auth != NULL)
			FUNC1(sav->key_auth->key_data, FUNC0(sav->key_auth));
		if (sav->key_enc != NULL)
			FUNC1(sav->key_enc->key_data, FUNC0(sav->key_enc));
	}
	if (sav->key_auth != NULL) {
		if (sav->key_auth->key_data != NULL)
			FUNC2(sav->key_auth->key_data, M_IPSEC_MISC);
		FUNC2(sav->key_auth, M_IPSEC_MISC);
		sav->key_auth = NULL;
	}
	if (sav->key_enc != NULL) {
		if (sav->key_enc->key_data != NULL)
			FUNC2(sav->key_enc->key_data, M_IPSEC_MISC);
		FUNC2(sav->key_enc, M_IPSEC_MISC);
		sav->key_enc = NULL;
	}
	if (sav->replay != NULL) {
		if (sav->replay->bitmap != NULL)
			FUNC2(sav->replay->bitmap, M_IPSEC_MISC);
		FUNC2(sav->replay, M_IPSEC_MISC);
		sav->replay = NULL;
	}
	if (sav->lft_h != NULL) {
		FUNC2(sav->lft_h, M_IPSEC_MISC);
		sav->lft_h = NULL;
	}
	if (sav->lft_s != NULL) {
		FUNC2(sav->lft_s, M_IPSEC_MISC);
		sav->lft_s = NULL;
	}
}