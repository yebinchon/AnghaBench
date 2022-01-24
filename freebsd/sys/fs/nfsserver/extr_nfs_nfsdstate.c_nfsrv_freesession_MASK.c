#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct nfssessionhash {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * nfsess_xprt; } ;
struct nfsdsession {scalar_t__ sess_refcnt; TYPE_2__ sess_cbsess; TYPE_1__* sess_slots; int /*<<< orphan*/ * sess_sessionid; } ;
struct TYPE_3__ {int /*<<< orphan*/ * nfssl_reply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfsdsession*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NFSDSESSION ; 
 int NFSERR_BACKCHANBUSY ; 
 int NFSERR_BADSESSION ; 
 int /*<<< orphan*/  FUNC1 (struct nfssessionhash*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct nfssessionhash* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfssessionhash*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int NFSV4_SLOTS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nfsdsession*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct nfsdsession* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sess_hash ; 
 int /*<<< orphan*/  sess_list ; 

__attribute__((used)) static int
FUNC10(struct nfsdsession *sep, uint8_t *sessionid)
{
	struct nfssessionhash *shp;
	int i;

	FUNC2();
	if (sep == NULL) {
		shp = FUNC3(sessionid);
		FUNC1(shp);
		sep = FUNC9(sessionid);
	} else {
		shp = FUNC3(sep->sess_sessionid);
		FUNC1(shp);
	}
	if (sep != NULL) {
		sep->sess_refcnt--;
		if (sep->sess_refcnt > 0) {
			FUNC4(shp);
			FUNC5();
			return (NFSERR_BACKCHANBUSY);
		}
		FUNC0(sep, sess_hash);
		FUNC0(sep, sess_list);
	}
	FUNC4(shp);
	FUNC5();
	if (sep == NULL)
		return (NFSERR_BADSESSION);
	for (i = 0; i < NFSV4_SLOTS; i++)
		if (sep->sess_slots[i].nfssl_reply != NULL)
			FUNC8(sep->sess_slots[i].nfssl_reply);
	if (sep->sess_cbsess.nfsess_xprt != NULL)
		FUNC6(sep->sess_cbsess.nfsess_xprt);
	FUNC7(sep, M_NFSDSESSION);
	return (0);
}