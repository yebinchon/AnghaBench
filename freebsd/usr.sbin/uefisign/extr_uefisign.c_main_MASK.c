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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int OPENSSL_INIT_ADD_ALL_CIPHERS ; 
 int OPENSSL_INIT_ADD_ALL_DIGESTS ; 
 int OPENSSL_INIT_LOAD_CONFIG ; 
 int OPENSSL_INIT_LOAD_CRYPTO_STRINGS ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,char const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 scalar_t__ FUNC9 () ; 
 int FUNC10 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int FUNC11 (int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (scalar_t__) ; 

int
FUNC15(int argc, char **argv)
{
	int ch, error;
	bool Vflag = false, vflag = false;
	const char *certpath = NULL, *keypath = NULL, *outpath = NULL, *inpath = NULL;
	FILE *certfp = NULL, *keyfp = NULL;
	X509 *cert = NULL;
	EVP_PKEY *key = NULL;
	pid_t pid;
	int pipefds[2];

	while ((ch = FUNC10(argc, argv, "Vc:k:o:v")) != -1) {
		switch (ch) {
		case 'V':
			Vflag = true;
			break;
		case 'c':
			certpath = FUNC5(optarg);
			break;
		case 'k':
			keypath = FUNC5(optarg);
			break;
		case 'o':
			outpath = FUNC5(optarg);
			break;
		case 'v':
			vflag = true;
			break;
		default:
			FUNC13();
		}
	}

	argc -= optind;
	argv += optind;
	if (argc != 1)
		FUNC13();

	if (Vflag) {
		if (certpath != NULL)
			FUNC8(1, "-V and -c are mutually exclusive");
		if (keypath != NULL)
			FUNC8(1, "-V and -k are mutually exclusive");
		if (outpath != NULL)
			FUNC8(1, "-V and -o are mutually exclusive");
	} else {
		if (certpath == NULL)
			FUNC8(1, "-c option is mandatory");
		if (keypath == NULL)
			FUNC8(1, "-k option is mandatory");
		if (outpath == NULL)
			FUNC8(1, "-o option is mandatory");
	}

	inpath = argv[0];

	FUNC1(OPENSSL_INIT_LOAD_CONFIG |
	    OPENSSL_INIT_LOAD_CRYPTO_STRINGS |
	    OPENSSL_INIT_ADD_ALL_CIPHERS | OPENSSL_INIT_ADD_ALL_DIGESTS, NULL);

	error = FUNC11(pipefds);
	if (error != 0)
		FUNC7(1, "pipe");

	pid = FUNC9();
	if (pid < 0)
		FUNC7(1, "fork");

	if (pid == 0)
		return (FUNC6(inpath, outpath, pipefds[1], Vflag, vflag));

	if (!Vflag) {
		certfp = FUNC4(certpath, "r");
		cert = FUNC3(certfp, NULL, NULL, NULL);
		if (cert == NULL) {
			FUNC0(stderr);
			FUNC8(1, "failed to load certificate from %s", certpath);
		}

		keyfp = FUNC4(keypath, "r");
		key = FUNC2(keyfp, NULL, NULL, NULL);
		if (key == NULL) {
			FUNC0(stderr);
			FUNC8(1, "failed to load private key from %s", keypath);
		}

		FUNC12(cert, key, pipefds[0]);
	}

	return (FUNC14(pid));
}