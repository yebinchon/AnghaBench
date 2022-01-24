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
typedef  scalar_t__ uint16_t ;
struct TYPE_7__ {scalar_t__ active_keyid; } ;
struct TYPE_8__ {int /*<<< orphan*/  shared_keys; TYPE_1__ authinfo; } ;
struct sctp_tcb {TYPE_2__ asoc; } ;
struct TYPE_9__ {int refcount; } ;
typedef  TYPE_3__ sctp_sharedkey_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_tcb*,scalar_t__) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

int
FUNC4(struct sctp_tcb *stcb, uint16_t keyid)
{
	sctp_sharedkey_t *skey;

	if (stcb == NULL)
		return (-1);

	/* is the keyid the assoc active sending key */
	if (keyid == stcb->asoc.authinfo.active_keyid)
		return (-1);

	/* does the key exist? */
	skey = FUNC2(&stcb->asoc.shared_keys, keyid);
	if (skey == NULL)
		return (-1);

	/* are there other refcount holders on the key? */
	if (skey->refcount > 1)
		return (-1);

	/* remove it */
	FUNC0(skey, next);
	FUNC3(skey);	/* frees skey->key as well */

	/* clear any cached keys */
	FUNC1(stcb, keyid);
	return (0);
}