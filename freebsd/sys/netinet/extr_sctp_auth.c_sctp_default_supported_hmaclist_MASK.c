#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sctp_hmaclist_t ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_AUTH_HMAC_ID_SHA1 ; 
 int /*<<< orphan*/  SCTP_AUTH_HMAC_ID_SHA256 ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

sctp_hmaclist_t *
FUNC2(void)
{
	sctp_hmaclist_t *new_list;

	new_list = FUNC0(2);
	if (new_list == NULL)
		return (NULL);
	/* We prefer SHA256, so list it first */
	(void)FUNC1(new_list, SCTP_AUTH_HMAC_ID_SHA256);
	(void)FUNC1(new_list, SCTP_AUTH_HMAC_ID_SHA1);
	return (new_list);
}