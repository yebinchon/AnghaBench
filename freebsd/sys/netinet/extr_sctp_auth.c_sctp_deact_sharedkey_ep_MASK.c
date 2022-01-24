#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_2__ {scalar_t__ default_keyid; int /*<<< orphan*/  shared_keys; } ;
struct sctp_inpcb {TYPE_1__ sctp_ep; } ;
typedef  int /*<<< orphan*/  sctp_sharedkey_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(struct sctp_inpcb *inp, uint16_t keyid)
{
	sctp_sharedkey_t *skey;

	if (inp == NULL)
		return (-1);

	/* is the keyid the active sending key on the endpoint */
	if (keyid == inp->sctp_ep.default_keyid)
		return (-1);

	/* does the key exist? */
	skey = FUNC1(&inp->sctp_ep.shared_keys, keyid);
	if (skey == NULL)
		return (-1);

	/* endpoint keys are not refcounted */

	/* remove it */
	FUNC0(skey, next);
	FUNC2(skey);	/* frees skey->key as well */

	return (0);
}