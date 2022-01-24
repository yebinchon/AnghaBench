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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct nfssessionhash {int dummy; } ;
struct nfsdsession {int /*<<< orphan*/  sess_slots; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfssessionhash*) ; 
 struct nfssessionhash* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfssessionhash*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 struct nfsdsession* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct mbuf**) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void
FUNC7(uint8_t *sessionid, uint32_t slotid, int repstat,
   struct mbuf **m)
{
	struct nfsdsession *sep;
	struct nfssessionhash *shp;

	shp = FUNC1(sessionid);
	FUNC0(shp);
	sep = FUNC4(sessionid);
	if (sep == NULL) {
		FUNC2(shp);
		FUNC6("nfsrv_cache_session: no session\n");
		FUNC3(*m);
		return;
	}
	FUNC5(slotid, sep->sess_slots, repstat, m);
	FUNC2(shp);
}