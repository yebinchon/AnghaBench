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
struct stat {int st_mode; } ;
struct sigaction {scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
typedef  void* off_t ;

/* Variables and functions */
 int A_flag ; 
 scalar_t__ B_size ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FETCH_MOVED ; 
 scalar_t__ FETCH_RESOLV ; 
 scalar_t__ FETCH_UNAVAIL ; 
 scalar_t__ FETCH_UNKNOWN ; 
 scalar_t__ FETCH_URL ; 
 int F_flag ; 
 scalar_t__ MINBUFSIZE ; 
 char const* N_filename ; 
#define  OPTION_BIND_ADDRESS 141 
#define  OPTION_HTTP_REFERER 140 
#define  OPTION_HTTP_USER_AGENT 139 
#define  OPTION_NO_FTP_PASSIVE_MODE 138 
#define  OPTION_NO_PROXY 137 
#define  OPTION_SSL_CA_CERT_FILE 136 
#define  OPTION_SSL_CA_CERT_PATH 135 
#define  OPTION_SSL_CLIENT_CERT_FILE 134 
#define  OPTION_SSL_CLIENT_KEY_FILE 133 
#define  OPTION_SSL_CRL_FILE 132 
#define  OPTION_SSL_NO_SSL3 131 
#define  OPTION_SSL_NO_TLS1 130 
#define  OPTION_SSL_NO_VERIFY_HOSTNAME 129 
#define  OPTION_SSL_NO_VERIFY_PEER 128 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int R_flag ; 
 scalar_t__ SA_RESETHAND ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int S_IFDIR ; 
 void* S_size ; 
 void* T_secs ; 
 int U_flag ; 
 int a_flag ; 
 int FUNC0 (char**,char*,char const*,char const*,...) ; 
 int b_flag ; 
 int /*<<< orphan*/ * buf ; 
 char* c_dirname ; 
 int d_flag ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* f_filename ; 
 int /*<<< orphan*/  family ; 
 int FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  fetchAuthMethod ; 
 scalar_t__ fetchLastErrCode ; 
 scalar_t__ fetchRestartCalls ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ ftp_timeout ; 
 char* FUNC7 (char*) ; 
 int FUNC8 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 char* h_hostname ; 
 scalar_t__ http_timeout ; 
 char* i_filename ; 
 int i_flag ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int l_flag ; 
 int /*<<< orphan*/  longopts ; 
 int m_flag ; 
 int /*<<< orphan*/ * FUNC13 (scalar_t__) ; 
 int n_flag ; 
 int o_directory ; 
 char const* o_filename ; 
 int o_flag ; 
 int o_stdout ; 
 int once_flag ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int p_flag ; 
 int /*<<< orphan*/  pgrp ; 
 int /*<<< orphan*/  query_auth ; 
 int r_flag ; 
 int s_flag ; 
 int FUNC14 (char*,char const*,int) ; 
 int /*<<< orphan*/  sig_handler ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ sigint ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 
 int FUNC18 (char const*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC19 (char const*,char*) ; 
 scalar_t__ FUNC20 (char*,char*) ; 
 char const* FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (char*) ; 
 char* FUNC23 (char*,char) ; 
 void* FUNC24 (char const*,char**,int) ; 
 int t_flag ; 
 int /*<<< orphan*/  FUNC25 () ; 
 scalar_t__ v_level ; 
 int v_progress ; 
 scalar_t__ v_tty ; 
 void* w_secs ; 
 int /*<<< orphan*/  FUNC26 (char*,...) ; 

int
FUNC27(int argc, char *argv[])
{
	struct stat sb;
	struct sigaction sa;
	const char *p, *s;
	char *end, *q;
	int c, e, r;


	while ((c = FUNC8(argc, argv,
	    "146AaB:bc:dFf:Hh:i:lMmN:nPpo:qRrS:sT:tUvw:",
	    longopts, NULL)) != -1)
		switch (c) {
		case '1':
			once_flag = 1;
			break;
		case '4':
			family = PF_INET;
			break;
		case '6':
			family = PF_INET6;
			break;
		case 'A':
			A_flag = 1;
			break;
		case 'a':
			a_flag = 1;
			break;
		case 'B':
			B_size = (off_t)FUNC24(optarg, &end, 10);
			if (*optarg == '\0' || *end != '\0')
				FUNC2(1, "invalid buffer size (%s)", optarg);
			break;
		case 'b':
			FUNC26("warning: the -b option is deprecated");
			b_flag = 1;
			break;
		case 'c':
			c_dirname = optarg;
			break;
		case 'd':
			d_flag = 1;
			break;
		case 'F':
			F_flag = 1;
			break;
		case 'f':
			f_filename = optarg;
			break;
		case 'H':
			FUNC26("the -H option is now implicit, "
			    "use -U to disable");
			break;
		case 'h':
			h_hostname = optarg;
			break;
		case 'i':
			i_flag = 1;
			i_filename = optarg;
			break;
		case 'l':
			l_flag = 1;
			break;
		case 'o':
			o_flag = 1;
			o_filename = optarg;
			break;
		case 'M':
		case 'm':
			if (r_flag)
				FUNC2(1, "the -m and -r flags "
				    "are mutually exclusive");
			m_flag = 1;
			break;
		case 'N':
			N_filename = optarg;
			break;
		case 'n':
			n_flag = 1;
			break;
		case 'P':
		case 'p':
			p_flag = 1;
			break;
		case 'q':
			v_level = 0;
			break;
		case 'R':
			R_flag = 1;
			break;
		case 'r':
			if (m_flag)
				FUNC2(1, "the -m and -r flags "
				    "are mutually exclusive");
			r_flag = 1;
			break;
		case 'S':
			S_size = (off_t)FUNC24(optarg, &end, 10);
			if (*optarg == '\0' || *end != '\0')
				FUNC2(1, "invalid size (%s)", optarg);
			break;
		case 's':
			s_flag = 1;
			break;
		case 'T':
			T_secs = FUNC24(optarg, &end, 10);
			if (*optarg == '\0' || *end != '\0')
				FUNC2(1, "invalid timeout (%s)", optarg);
			break;
		case 't':
			t_flag = 1;
			FUNC26("warning: the -t option is deprecated");
			break;
		case 'U':
			U_flag = 1;
			break;
		case 'v':
			v_level++;
			break;
		case 'w':
			a_flag = 1;
			w_secs = FUNC24(optarg, &end, 10);
			if (*optarg == '\0' || *end != '\0')
				FUNC2(1, "invalid delay (%s)", optarg);
			break;
		case OPTION_BIND_ADDRESS:
			FUNC14("FETCH_BIND_ADDRESS", optarg, 1);
			break;
		case OPTION_NO_FTP_PASSIVE_MODE:
			FUNC14("FTP_PASSIVE_MODE", "no", 1);
			break;
		case OPTION_HTTP_REFERER:
			FUNC14("HTTP_REFERER", optarg, 1);
			break;
		case OPTION_HTTP_USER_AGENT:
			FUNC14("HTTP_USER_AGENT", optarg, 1);
			break;
		case OPTION_NO_PROXY:
			FUNC14("NO_PROXY", optarg, 1);
			break;
		case OPTION_SSL_CA_CERT_FILE:
			FUNC14("SSL_CA_CERT_FILE", optarg, 1);
			break;
		case OPTION_SSL_CA_CERT_PATH:
			FUNC14("SSL_CA_CERT_PATH", optarg, 1);
			break;
		case OPTION_SSL_CLIENT_CERT_FILE:
			FUNC14("SSL_CLIENT_CERT_FILE", optarg, 1);
			break;
		case OPTION_SSL_CLIENT_KEY_FILE:
			FUNC14("SSL_CLIENT_KEY_FILE", optarg, 1);
			break;
		case OPTION_SSL_CRL_FILE:
			FUNC14("SSL_CLIENT_CRL_FILE", optarg, 1);
			break;
		case OPTION_SSL_NO_SSL3:
			FUNC14("SSL_NO_SSL3", "", 1);
			break;
		case OPTION_SSL_NO_TLS1:
			FUNC14("SSL_NO_TLS1", "", 1);
			break;
		case OPTION_SSL_NO_VERIFY_HOSTNAME:
			FUNC14("SSL_NO_VERIFY_HOSTNAME", "", 1);
			break;
		case OPTION_SSL_NO_VERIFY_PEER:
			FUNC14("SSL_NO_VERIFY_PEER", "", 1);
			break;
		default:
			FUNC25();
			FUNC3(1);
		}

	argc -= optind;
	argv += optind;

	if (h_hostname || f_filename || c_dirname) {
		if (!h_hostname || !f_filename || argc) {
			FUNC25();
			FUNC3(1);
		}
		/* XXX this is a hack. */
		if (FUNC20(h_hostname, "@:/") != FUNC22(h_hostname))
			FUNC2(1, "invalid hostname");
		if (FUNC0(argv, "ftp://%s/%s/%s", h_hostname,
		    c_dirname ? c_dirname : "", f_filename) == -1)
			FUNC2(1, "%s", FUNC21(ENOMEM));
		argc++;
	}

	if (!argc) {
		FUNC25();
		FUNC3(1);
	}

	/* allocate buffer */
	if (B_size < MINBUFSIZE)
		B_size = MINBUFSIZE;
	if ((buf = FUNC13(B_size)) == NULL)
		FUNC2(1, "%s", FUNC21(ENOMEM));

	/* timeouts */
	if ((s = FUNC7("FTP_TIMEOUT")) != NULL) {
		ftp_timeout = FUNC24(s, &end, 10);
		if (*s == '\0' || *end != '\0' || ftp_timeout < 0) {
			FUNC26("FTP_TIMEOUT (%s) is not a positive integer", s);
			ftp_timeout = 0;
		}
	}
	if ((s = FUNC7("HTTP_TIMEOUT")) != NULL) {
		http_timeout = FUNC24(s, &end, 10);
		if (*s == '\0' || *end != '\0' || http_timeout < 0) {
			FUNC26("HTTP_TIMEOUT (%s) is not a positive integer", s);
			http_timeout = 0;
		}
	}

	/* signal handling */
	sa.sa_flags = 0;
	sa.sa_handler = sig_handler;
	FUNC16(&sa.sa_mask);
	FUNC15(SIGALRM, &sa, NULL);
	sa.sa_flags = SA_RESETHAND;
	FUNC15(SIGINT, &sa, NULL);
	fetchRestartCalls = 0;

	/* output file */
	if (o_flag) {
		if (FUNC19(o_filename, "-") == 0) {
			o_stdout = 1;
		} else if (FUNC18(o_filename, &sb) == -1) {
			if (errno == ENOENT) {
				if (argc > 1)
					FUNC2(1, "%s is not a directory",
					    o_filename);
			} else {
				FUNC1(1, "%s", o_filename);
			}
		} else {
			if (sb.st_mode & S_IFDIR)
				o_directory = 1;
		}
	}

	/* check if output is to a tty (for progress report) */
	v_tty = FUNC11(STDERR_FILENO);
	v_progress = v_tty && v_level > 0;
	if (v_progress)
		pgrp = FUNC9();

	r = 0;

	/* authentication */
	if (v_tty)
		fetchAuthMethod = query_auth;
	if (N_filename != NULL)
		if (FUNC14("NETRC", N_filename, 1) == -1)
			FUNC1(1, "setenv: cannot set NETRC=%s", N_filename);

	while (argc) {
		if ((p = FUNC23(*argv, '/')) == NULL)
			p = *argv;
		else
			p++;

		if (!*p)
			p = "fetch.out";

		fetchLastErrCode = 0;

		if (o_flag) {
			if (o_stdout) {
				e = FUNC4(*argv, "-");
			} else if (o_directory) {
				FUNC0(&q, "%s/%s", o_filename, p);
				e = FUNC4(*argv, q);
				FUNC6(q);
			} else {
				e = FUNC4(*argv, o_filename);
			}
		} else {
			e = FUNC4(*argv, p);
		}

		if (sigint)
			FUNC12(FUNC10(), SIGINT);

		if (e == 0 && once_flag)
			FUNC3(0);

		if (e) {
			r = 1;
			if ((fetchLastErrCode
			    && fetchLastErrCode != FETCH_UNAVAIL
			    && fetchLastErrCode != FETCH_MOVED
			    && fetchLastErrCode != FETCH_URL
			    && fetchLastErrCode != FETCH_RESOLV
			    && fetchLastErrCode != FETCH_UNKNOWN)) {
				if (w_secs && v_level)
					FUNC5(stderr, "Waiting %ld seconds "
					    "before retrying\n", w_secs);
				if (w_secs)
					FUNC17(w_secs);
				if (a_flag)
					continue;
			}
		}

		argc--, argv++;
	}

	FUNC3(r);
}