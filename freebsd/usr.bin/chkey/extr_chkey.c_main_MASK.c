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
typedef  scalar_t__ uid_t ;
struct passwd {int /*<<< orphan*/  pw_passwd; } ;
typedef  int /*<<< orphan*/  newline ;

/* Variables and functions */
 int HEXKEYBYTES ; 
 int KEYCHECKSUMSIZE ; 
 int /*<<< orphan*/  MAXNETNAMELEN ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  PKMAP ; 
 int /*<<< orphan*/  ROOTKEY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  domain ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 int FUNC5 (int,char**,char*) ; 
 char* FUNC6 (char*) ; 
 struct passwd* FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int FUNC15 (char*,char*,char*) ; 
 scalar_t__ FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 scalar_t__ FUNC19 (char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 struct passwd* FUNC27 (scalar_t__) ; 

int
FUNC28(int argc, char **argv)
{
	char name[MAXNETNAMELEN+1];
	char public[HEXKEYBYTES + 1];
	char secret[HEXKEYBYTES + 1];
	char crypt1[HEXKEYBYTES + KEYCHECKSUMSIZE + 1];
	char crypt2[HEXKEYBYTES + KEYCHECKSUMSIZE + 1];
	int status;	
	char *pass;
	struct passwd *pw;
	uid_t uid;
	int force = 0;
	int ch;
#ifdef YP
	char *master;
#endif
#ifdef YPPASSWD
	char *cryptpw;
#endif

	while ((ch = FUNC5(argc, argv, "f")) != -1)
		switch(ch) {
		case 'f':
			force = 1;
			break;
		default:
			FUNC18();
		}
	argc -= optind;
	argv += optind;

	if (argc != 0)
		FUNC18();

#ifdef YP
	(void)yp_get_default_domain(&domain);
	if (yp_master(domain, PKMAP, &master) != 0)
		errx(1, "can't find master of publickey database");
#endif
	uid = FUNC8() /*geteuid()*/;
	if (uid == 0) {
		if (FUNC9(name, NULL, NULL) == 0)
			FUNC2(1, "cannot convert hostname to netname");
	} else {
		if (FUNC19(name, uid, NULL) == 0)
			FUNC2(1, "cannot convert username to netname");
	}
	(void)FUNC14("Generating new key for %s.\n", name);

	if (!force) {
		if (uid != 0) {
#ifdef YPPASSWD
			pw = ypgetpwuid(uid);
#else
			pw = FUNC7(uid);
#endif
			if (pw == NULL) {
#ifdef YPPASSWD
				errx(1,
			"no NIS password entry found: can't change key");
#else
				FUNC2(1,
			"no password entry found: can't change key");
#endif
			}
		} else {
			pw = FUNC7(0);
			if (pw == NULL)
			  FUNC2(1, "no password entry found: can't change key");
		}
	}
	pass = FUNC6("Password:");
#ifdef YPPASSWD
	if (!force) {
		cryptpw = crypt(pass, pw->pw_passwd);
		if (cryptpw == NULL || strcmp(cryptpw, pw->pw_passwd) != 0)
			errx(1, "invalid password");
	}
#else
	force = 1;	/* Make this mandatory */
#endif
	FUNC4(public, secret, pass);	

	FUNC12(crypt1, secret, HEXKEYBYTES);
	FUNC12(crypt1 + HEXKEYBYTES, secret, KEYCHECKSUMSIZE);
	crypt1[HEXKEYBYTES + KEYCHECKSUMSIZE] = 0;
	FUNC23(crypt1, pass);

	if (force) {
		FUNC12(crypt2, crypt1, HEXKEYBYTES + KEYCHECKSUMSIZE + 1);	
		FUNC22(crypt2, FUNC6("Retype password:"));
		if (FUNC11(crypt2, crypt2 + HEXKEYBYTES, KEYCHECKSUMSIZE) != 0
			|| FUNC11(crypt2, secret, HEXKEYBYTES) != 0)
			FUNC2(1, "password incorrect");
	}

#ifdef YP
	(void)printf("Sending key change request to %s...\n", master);
#endif
	status = FUNC15(name, public, crypt1);
	if (status != 0) {
#ifdef YP
		errx(1, "unable to update NIS database (%u): %s",
				status, yperr_string(status));
#else
		FUNC2(1, "unable to update publickey database");
#endif
	}

	if (uid == 0) {
		/*
		 * Root users store their key in /etc/$ROOTKEY so
		 * that they can auto reboot without having to be
		 * around to type a password. Storing this in a file
		 * is rather dubious: it should really be in the EEPROM
		 * so it does not go over the net.
		 */
		int fd;

		fd = FUNC13(ROOTKEY, O_WRONLY|O_TRUNC|O_CREAT, 0);
		if (fd < 0) {
			FUNC20("%s", ROOTKEY);
		} else {
			char newline = '\n';

			if (FUNC21(fd, secret, FUNC17(secret)) < 0 ||
			    FUNC21(fd, &newline, sizeof(newline)) < 0)
				FUNC20("%s: write", ROOTKEY);
		}
		FUNC0(fd);
	}

	if (FUNC10(secret) < 0)
		FUNC2(1, "unable to login with new secret key");
	(void)FUNC14("Done.\n");
	FUNC3(0);
	/* NOTREACHED */
}