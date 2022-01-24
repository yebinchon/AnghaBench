#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int oa_length; TYPE_4__* oa_base; } ;
struct TYPE_10__ {int oa_length; TYPE_4__* oa_base; } ;
struct audata {TYPE_1__ au_shcred; TYPE_3__ au_origcred; int /*<<< orphan*/  au_refs; } ;
struct TYPE_9__ {int oa_length; TYPE_4__* oa_base; } ;
struct TYPE_11__ {TYPE_2__ ah_verf; struct TYPE_11__* ah_private; } ;
typedef  TYPE_4__ AUTH ;

/* Variables and functions */
 struct audata* FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(AUTH *auth)
{
	struct audata *au;

	au = FUNC0(auth);

	if (!FUNC2(&au->au_refs))
		return;

	FUNC1(au->au_origcred.oa_base, au->au_origcred.oa_length);

	if (au->au_shcred.oa_base != NULL)
		FUNC1(au->au_shcred.oa_base, au->au_shcred.oa_length);

	FUNC1(auth->ah_private, sizeof(struct audata));

	if (auth->ah_verf.oa_base != NULL)
		FUNC1(auth->ah_verf.oa_base, auth->ah_verf.oa_length);

	FUNC1(auth, sizeof(*auth));
}