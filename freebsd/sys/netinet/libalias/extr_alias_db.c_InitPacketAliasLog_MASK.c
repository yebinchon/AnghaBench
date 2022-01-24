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
struct libalias {int packetAliasMode; int /*<<< orphan*/  logDesc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  LIBALIAS_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct libalias*) ; 
 int PKT_ALIAS_LOG ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct libalias *la)
{

	FUNC0(la);
	if (~la->packetAliasMode & PKT_ALIAS_LOG) {
#ifdef _KERNEL
		if ((la->logDesc = malloc(LIBALIAS_BUF_SIZE)))
			;
#else 		
		if ((la->logDesc = FUNC1("/var/log/alias.log", "w")))
			FUNC2(la->logDesc, "PacketAlias/InitPacketAliasLog: Packet alias logging enabled.\n");	       
#endif
		else 
			return (ENOMEM); /* log initialization failed */
		la->packetAliasMode |= PKT_ALIAS_LOG;
	}

	return (1);
}