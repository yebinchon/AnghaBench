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
typedef  int /*<<< orphan*/  time_t ;
struct socks {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int LOG_NOTICE ; 
 int LOG_PERROR ; 
 int LOG_PID ; 
 int LOG_USER ; 
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  _IONBF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  family ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (void*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 char* FUNC9 () ; 
 int FUNC10 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,char*,char*,struct socks*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int /*<<< orphan*/ ) ; 
 void* optarg ; 
 scalar_t__ optind ; 
 int FUNC13 (void*) ; 
 int /*<<< orphan*/  send_to_all ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (char const*,char*,char const*,struct socks**) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC16 (char*,char) ; 
 size_t FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 () ; 

int
FUNC21(int argc, char *argv[])
{
	struct socks *socks;
	ssize_t nsock;
	time_t now;
	int ch, logflags, pri;
	char *tag, *host, buf[1024], *timestamp, tbuf[26],
	    *hostname, hbuf[MAXHOSTNAMELEN];
	const char *svcname, *src;

	tag = NULL;
	host = NULL;
	hostname = NULL;
	svcname = "syslog";
	src = NULL;
	socks = NULL;
	pri = LOG_USER | LOG_NOTICE;
	logflags = 0;
	FUNC19("TZ");
	while ((ch = FUNC10(argc, argv, "46Af:H:h:iP:p:S:st:")) != -1)
		switch((char)ch) {
		case '4':
			family = PF_INET;
			break;
#ifdef INET6
		case '6':
			family = PF_INET6;
			break;
#endif
		case 'A':
			send_to_all++;
			break;
		case 'f':		/* file to log */
			if (FUNC7(optarg, "r", stdin) == NULL)
				FUNC2(1, "%s", optarg);
			FUNC14(stdin, 0, _IONBF, 0);
			break;
		case 'H':		/* hostname to set in message header */
			hostname = optarg;
			break;
		case 'h':		/* hostname to deliver to */
			host = optarg;
			break;
		case 'i':		/* log process id also */
			logflags |= LOG_PID;
			break;
		case 'P':		/* service name or port number */
			svcname = optarg;
			break;
		case 'p':		/* priority */
			pri = FUNC13(optarg);
			break;
		case 's':		/* log to standard error */
			logflags |= LOG_PERROR;
			break;
		case 'S':		/* source address */
			src = optarg;
			break;
		case 't':		/* tag */
			tag = optarg;
			break;
		case '?':
		default:
			FUNC20();
		}
	argc -= optind;
	argv += optind;

	if (host) {
		nsock = FUNC15(src, host, svcname, &socks);
		if (nsock <= 0)
			FUNC3(1, "socket");
	} else {
		if (src)
			FUNC3(1, "-h option is missing.");
		nsock = 0;
	}

	if (tag == NULL)
		tag = FUNC9();
	/* setup for logging */
	if (host == NULL)
		FUNC12(tag, logflags, 0);
	(void) FUNC5(stdout);

	(void )FUNC18(&now);
	(void )FUNC1(&now, tbuf);
	tbuf[19] = '\0';
	timestamp = tbuf + 4;

	if (hostname == NULL) {
		hostname = hbuf;
		(void )FUNC8(hbuf, MAXHOSTNAMELEN);
		*FUNC16(hostname, '.') = '\0';
	}

	/* log input line if appropriate */
	if (argc > 0) {
		char *p, *endp;
		size_t len;

		for (p = buf, endp = buf + sizeof(buf) - 2; *argv;) {
			len = FUNC17(*argv);
			if (p + len > endp && p > buf) {
				FUNC11(pri, timestamp, hostname, tag,
				    socks, nsock, buf);
				p = buf;
			}
			if (len > sizeof(buf) - 1)
				FUNC11(pri, timestamp, hostname, tag,
				    socks, nsock, *argv++);
			else {
				if (p != buf)
					*p++ = ' ';
				FUNC0(*argv++, p, len);
				*(p += len) = '\0';
			}
		}
		if (p != buf)
			FUNC11(pri, timestamp, hostname, tag, socks, nsock,
			    buf);
	} else
		while (FUNC6(buf, sizeof(buf), stdin) != NULL)
			FUNC11(pri, timestamp, hostname, tag, socks, nsock,
			    buf);
	FUNC4(0);
}