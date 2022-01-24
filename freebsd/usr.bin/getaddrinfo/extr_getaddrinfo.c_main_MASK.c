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
struct addrinfo {int ai_flags; char* ai_canonname; scalar_t__ ai_protocol; scalar_t__ ai_socktype; int /*<<< orphan*/  ai_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int AI_CANONNAME ; 
 int AI_NUMERICHOST ; 
 int AI_NUMERICSERV ; 
 int AI_PASSIVE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int FUNC5 (int,char**,char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (struct addrinfo*) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (char const*,char) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 

int
FUNC15(int argc, char **argv)
{
	static const struct addrinfo zero_addrinfo;
	struct addrinfo hints = zero_addrinfo;
	struct addrinfo *addrinfo;
	const char *hostname = NULL, *service = NULL;
	int ch;
	int error;

	FUNC11(argv[0]);

	hints.ai_family = AF_UNSPEC;
	hints.ai_socktype = 0;
	hints.ai_protocol = 0;
	hints.ai_flags = 0;

	while ((ch = FUNC5(argc, argv, "cf:nNp:Ps:t:")) != -1) {
		switch (ch) {
		case 'c':
			hints.ai_flags |= AI_CANONNAME;
			break;

		case 'f':
			if (!FUNC6(optarg, &hints.ai_family)) {
				FUNC14("invalid address family: %s", optarg);
				FUNC13();
			}
			break;

		case 'n':
			hints.ai_flags |= AI_NUMERICHOST;
			break;

		case 'N':
			hints.ai_flags |= AI_NUMERICSERV;
			break;

		case 's':
			service = optarg;
			break;

		case 'p':
			if (!FUNC7(optarg, &hints.ai_protocol)) {
				FUNC14("invalid protocol: %s", optarg);
				FUNC13();
			}
			break;

		case 'P':
			hints.ai_flags |= AI_PASSIVE;
			break;

		case 't':
			if (!FUNC8(optarg, &hints.ai_socktype)) {
				FUNC14("invalid socket type: %s", optarg);
				FUNC13();
			}
			break;

		case '?':
		default:
			FUNC13();
		}
	}

	argc -= optind;
	argv += optind;

	if (!((argc == 1) || ((argc == 0) && (hints.ai_flags & AI_PASSIVE))))
		FUNC13();
	if (argc == 1)
		hostname = argv[0];

	if (service != NULL) {
		char *p;

		if ((p = FUNC12(service, '/')) != NULL) {
			if (hints.ai_protocol != 0) {
				FUNC14("protocol already specified");
				FUNC13();
			}
			*p = '\0';
			p++;

			if (!FUNC7(p, &hints.ai_protocol)) {
				FUNC14("invalid protocol: %s", p);
				FUNC13();
			}
		}
	}

	error = FUNC4(hostname, service, &hints, &addrinfo);
	if (error)
		FUNC1(1, "%s", FUNC3(error));

	if ((hints.ai_flags & AI_CANONNAME) && (addrinfo != NULL)) {
		if (FUNC10("canonname %s\n", addrinfo->ai_canonname) < 0)
			FUNC0(1, "printf");
	}

	FUNC9(addrinfo);

	FUNC2(addrinfo);

	return 0;
}