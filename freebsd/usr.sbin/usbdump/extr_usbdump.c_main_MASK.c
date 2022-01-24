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
typedef  int uint32_t ;
struct usbcap {int bfd; int fd; int bufsize; int rfd; int wfd; int /*<<< orphan*/ * buffer; } ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct ifreq {int /*<<< orphan*/  ifr_name; } ;
struct bpf_version {scalar_t__ bv_major; scalar_t__ bv_minor; } ;
struct bpf_stat {int bs_recv; int bs_drop; } ;
struct bpf_program {int dummy; } ;
typedef  int /*<<< orphan*/  ifr ;
typedef  struct ifreq* caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  BIOCGBLEN ; 
 int /*<<< orphan*/  BIOCGSTATS ; 
 int /*<<< orphan*/  BIOCSBLEN ; 
 int /*<<< orphan*/  BIOCSETF ; 
 int /*<<< orphan*/  BIOCSETIF ; 
 int /*<<< orphan*/  BIOCSRTIMEOUT ; 
 int /*<<< orphan*/  BIOCVERSION ; 
 scalar_t__ BPF_MAJOR_VERSION ; 
 scalar_t__ BPF_MINOR_VERSION ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIOCIFCREATE2 ; 
 int /*<<< orphan*/  SIOCIFDESTROY ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int USBPF_HDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 char* b_arg ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct usbcap*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct bpf_program*) ; 
 int FUNC8 (int,char**,char const*) ; 
 int /*<<< orphan*/  handle_sigint ; 
 char* i_arg ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct usbcap*) ; 
 int /*<<< orphan*/  FUNC11 (struct usbcap*) ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC13 (struct bpf_program*,long) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 void* FUNC16 (char*,int,...) ; 
 char* optarg ; 
 int pkt_captured ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 char* r_arg ; 
 int /*<<< orphan*/  FUNC18 (struct usbcap*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC22 (char*,char**,int) ; 
 struct usbcap uc ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  verbose ; 
 char* w_arg ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 

int
FUNC25(int argc, char *argv[])
{
	struct timeval tv;
	struct bpf_program total_prog;
	struct bpf_stat us;
	struct bpf_version bv;
	struct usbcap *p = &uc;
	struct ifreq ifr;
	long snapshot = 192;
	uint32_t v;
	int fd;
	int o;
	int filt_unit;
	int filt_ep;
	int s;
	int ifindex;
	const char *optstring;
	char *pp;

	optstring = "b:hi:r:s:vw:f:";
	while ((o = FUNC8(argc, argv, optstring)) != -1) {
		switch (o) {
		case 'i':
			i_arg = optarg;
			break;
		case 'r':
			r_arg = optarg;
			FUNC10(p);
			break;
		case 's':
			snapshot = FUNC22(optarg, &pp, 10);
			errno = 0;
			if (pp != NULL && *pp != 0)
				FUNC23();
			if (snapshot == 0 && errno == EINVAL)
				FUNC23();
			/* snapeshot == 0 is special */
			if (snapshot == 0)
				snapshot = -1;
			break;
		case 'b':
			b_arg = optarg;
			break;
		case 'v':
			verbose++;
			break;
		case 'w':
			w_arg = optarg;
			FUNC11(p);
			break;
		case 'f':
			filt_unit = FUNC22(optarg, &pp, 10);
			filt_ep = -1;
			if (pp != NULL) {
				if (*pp == '.') {
					filt_ep = FUNC22(pp + 1, &pp, 10);
					if (pp != NULL && *pp != 0)
						FUNC23();
				} else if (*pp != 0) {
					FUNC23();
				}
			}
			FUNC0(filt_unit, filt_ep);
			break;
		default:
			FUNC23();
			/* NOTREACHED */
		}
	}

	if (b_arg != NULL) {
		p->bfd = FUNC16(b_arg, O_CREAT | O_TRUNC |
		    O_WRONLY, S_IRUSR | S_IWUSR);
		if (p->bfd < 0) {
			FUNC4(EXIT_FAILURE, "Could not open "
			    "'%s' for write", b_arg);
		}
	}

	/*
	 * Require more verbosity to print anything when -w or -b is
	 * specified on the command line:
	 */
	if (w_arg != NULL || b_arg != NULL)
		verbose--;

	if (r_arg != NULL) {
		FUNC18(p);
		FUNC6(EXIT_SUCCESS);
	}

	FUNC1();

	p->fd = fd = FUNC16("/dev/bpf", O_RDONLY);
	if (p->fd < 0)
		FUNC4(EXIT_FAILURE, "Could not open BPF device");

	if (FUNC12(fd, BIOCVERSION, (caddr_t)&bv) < 0)
		FUNC4(EXIT_FAILURE, "BIOCVERSION ioctl failed");

	if (bv.bv_major != BPF_MAJOR_VERSION ||
	    bv.bv_minor < BPF_MINOR_VERSION)
		FUNC5(EXIT_FAILURE, "Kernel BPF filter out of date");

	/* USB transfers can be greater than 64KByte */
	v = 1U << 16;

	/* clear ifr structure */
	FUNC15(&ifr, 0, sizeof(ifr));

	/* Try to create usbusN interface if it is not available. */
	s = FUNC20(AF_LOCAL, SOCK_DGRAM, 0);
	if (s < 0)
		FUNC5(EXIT_FAILURE, "Could not open a socket");
	ifindex = FUNC9(i_arg);
	if (ifindex == 0) {
		(void)FUNC21(ifr.ifr_name, i_arg, sizeof(ifr.ifr_name));
		if (FUNC12(s, SIOCIFCREATE2, &ifr) < 0)
			FUNC5(EXIT_FAILURE, "Invalid bus interface: %s", i_arg);
	}

	for ( ; v >= USBPF_HDR_LEN; v >>= 1) {
		(void)FUNC12(fd, BIOCSBLEN, (caddr_t)&v);
		(void)FUNC21(ifr.ifr_name, i_arg, sizeof(ifr.ifr_name));
		if (FUNC12(fd, BIOCSETIF, (caddr_t)&ifr) >= 0)
			break;
	}
	if (v == 0)
		FUNC5(EXIT_FAILURE, "No buffer size worked.");

	if (FUNC12(fd, BIOCGBLEN, (caddr_t)&v) < 0)
		FUNC4(EXIT_FAILURE, "BIOCGBLEN ioctl failed");

	p->bufsize = v;
	p->buffer = (uint8_t *)FUNC14(p->bufsize);
	if (p->buffer == NULL)
		FUNC5(EX_SOFTWARE, "Out of memory.");

	FUNC13(&total_prog, snapshot);

	if (FUNC12(p->fd, BIOCSETF, (caddr_t)&total_prog) < 0)
		FUNC4(EXIT_FAILURE, "BIOCSETF ioctl failed");

	FUNC7(&total_prog);

	/* 1 second read timeout */
	tv.tv_sec = 1;
	tv.tv_usec = 0;
	if (FUNC12(p->fd, BIOCSRTIMEOUT, (caddr_t)&tv) < 0)
		FUNC4(EXIT_FAILURE, "BIOCSRTIMEOUT ioctl failed");

	(void)FUNC19(SIGINT, handle_sigint);

	FUNC3(p);

	if (FUNC12(fd, BIOCGSTATS, (caddr_t)&us) < 0)
		FUNC4(EXIT_FAILURE, "BIOCGSTATS ioctl failed");

	/* XXX what's difference between pkt_captured and us.us_recv? */
	FUNC17("\n");
	FUNC17("%d packets captured\n", pkt_captured);
	FUNC17("%d packets received by filter\n", us.bs_recv);
	FUNC17("%d packets dropped by kernel\n", us.bs_drop);

	/*
	 * Destroy the usbusN interface only if it was created by
	 * usbdump(8).  Ignore when it was already destroyed.
	 */
	if (ifindex == 0 && FUNC9(i_arg) > 0) {
		(void)FUNC21(ifr.ifr_name, i_arg, sizeof(ifr.ifr_name));
		if (FUNC12(s, SIOCIFDESTROY, &ifr) < 0)
			FUNC24("SIOCIFDESTROY ioctl failed");
	}
	FUNC2(s);

	if (p->fd > 0)
		FUNC2(p->fd);
	if (p->rfd > 0)
		FUNC2(p->rfd);
	if (p->wfd > 0)
		FUNC2(p->wfd);
	if (p->bfd > 0)
		FUNC2(p->bfd);

	return (EXIT_SUCCESS);
}