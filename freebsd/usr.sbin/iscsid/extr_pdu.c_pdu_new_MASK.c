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
struct pdu {struct connection* pdu_connection; int /*<<< orphan*/ * pdu_bhs; } ;
struct connection {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

struct pdu *
FUNC2(struct connection *conn)
{
	struct pdu *pdu;

	pdu = FUNC0(1, sizeof(*pdu));
	if (pdu == NULL)
		FUNC1(1, "calloc");

	pdu->pdu_bhs = FUNC0(1, sizeof(*pdu->pdu_bhs));
	if (pdu->pdu_bhs == NULL)
		FUNC1(1, "calloc");

	pdu->pdu_connection = conn;

	return (pdu);
}