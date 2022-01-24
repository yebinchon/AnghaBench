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
typedef  int u_char ;
struct nfsd_clid {int* nclid_id; int nclid_idlen; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSSVC_ADMINREVOKE ; 
 int NFSV4_OPAQUELIMIT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct nfsd_clid*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int
FUNC7(int argc, char **argv)
{
	char *cp;
	u_char val;
	int cnt, even;
	struct nfsd_clid revoke_handle;

	if (FUNC2("nfsd") < 0)
		FUNC1(1, "nfsd not loaded - self terminating");
	if (argc != 2)
		FUNC6();
	cnt = 0;
	cp = argv[1];
	if (FUNC5(cp) % 2)
		even = 0;
	else
		even = 1;
	val = 0;
	while (*cp) {
		if (*cp >= '0' && *cp <= '9')
			val += (u_char)(*cp - '0');
		else if (*cp >= 'A' && *cp <= 'F')
			val += ((u_char)(*cp - 'A')) + 0xa;
		else if (*cp >= 'a' && *cp <= 'f')
			val += ((u_char)(*cp - 'a')) + 0xa;
		else
			FUNC1(1, "Non hexadecimal digit in %s", argv[1]);
		if (even) {
			val <<= 4;
			even = 0;
		} else {
			revoke_handle.nclid_id[cnt++] = val;
			if (cnt > NFSV4_OPAQUELIMIT)
				FUNC1(1, "Clientid %s, loo long", argv[1]);
			val = 0;
			even = 1;
		}
		cp++;
	}

	/*
	 * Do the revocation system call.
	 */
	revoke_handle.nclid_idlen = cnt;
#ifdef DEBUG
	printf("Idlen=%d\n", revoke_handle.nclid_idlen);
	for (cnt = 0; cnt < revoke_handle.nclid_idlen; cnt++)
		printf("%02x", revoke_handle.nclid_id[cnt]);
	printf("\n");
#else
	if (FUNC3(NFSSVC_ADMINREVOKE, &revoke_handle) < 0)
		FUNC0(1, "Admin revoke failed");
#endif
}