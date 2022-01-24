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
struct passwd {scalar_t__ pw_uid; } ;
struct hostent {char* h_name; } ;

/* Variables and functions */
 int HEXKEYBYTES ; 
 int KEYCHECKSUMSIZE ; 
 int /*<<< orphan*/  MAXNETNAMELEN ; 
 int /*<<< orphan*/  YPDBPATH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 scalar_t__ FUNC5 () ; 
 struct hostent* FUNC6 (char*) ; 
 char* FUNC7 (char*) ; 
 struct passwd* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int FUNC13 (char*,char*,char*) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 

int
FUNC21(int argc, char *argv[])
{
	char name[MAXNETNAMELEN + 1];
	char public[HEXKEYBYTES + 1];
	char secret[HEXKEYBYTES + 1];
	char crypt1[HEXKEYBYTES + KEYCHECKSUMSIZE + 1];
	char crypt2[HEXKEYBYTES + KEYCHECKSUMSIZE + 1];
	int status;	
	char *pass;
	struct passwd *pw;
#ifdef undef
	struct hostent *h;
#endif

	if (argc != 3 || !(FUNC14(argv[1], "-u") == 0 ||
		FUNC14(argv[1], "-h") == 0)) {
		FUNC15();
	}
	if (FUNC5() != 0)
		FUNC2(1, "must be superuser");

#ifdef YP
	if (chdir(YPDBPATH) < 0)
		warn("cannot chdir to %s", YPDBPATH);
#endif	/* YP */
	if (FUNC14(argv[1], "-u") == 0) {
		pw = FUNC8(argv[2]);
		if (pw == NULL)
			FUNC2(1, "unknown user: %s", argv[2]);
		(void)FUNC16(name, (int)pw->pw_uid, (char *)NULL);
	} else {
#ifdef undef
		h = gethostbyname(argv[2]);
		if (h == NULL)
			errx(1, "unknown host: %s", argv[1]);
		(void)host2netname(name, h->h_name, (char *)NULL);
#else
		(void)FUNC9(name, argv[2], (char *)NULL);
#endif
	}

	(void)FUNC12("Adding new key for %s.\n", name);
	pass = FUNC7("New password:");
	FUNC4(public, secret, pass);

	FUNC11(crypt1, secret, HEXKEYBYTES);
	FUNC11(crypt1 + HEXKEYBYTES, secret, KEYCHECKSUMSIZE);
	crypt1[HEXKEYBYTES + KEYCHECKSUMSIZE] = 0;
	FUNC19(crypt1, pass);

	FUNC11(crypt2, crypt1, HEXKEYBYTES + KEYCHECKSUMSIZE + 1);	
	FUNC18(crypt2, FUNC7("Retype password:"));
	if (FUNC10(crypt2, crypt2 + HEXKEYBYTES, KEYCHECKSUMSIZE) != 0 ||
		FUNC10(crypt2, secret, HEXKEYBYTES) != 0)
		FUNC2(1, "password incorrect");

#ifdef YP
	(void)printf("Please wait for the database to get updated...\n");
#endif
	if ((status = FUNC13(name, public, crypt1))) {
#ifdef YP
		errx(1, "unable to update NIS database (%u): %s", 
			status, yperr_string(status));
#else
		FUNC2(1, "unable to update publickey database (%u): %s",
			status, FUNC1(status));
#endif
	}
	(void)FUNC12("Your new key has been successfully stored away.\n");
	FUNC3(0);
	/* NOTREACHED */
}