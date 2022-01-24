#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
typedef  int u_int ;
struct TYPE_6__ {double sec; double usec; } ;
struct TYPE_7__ {int counter; TYPE_1__ clock; } ;
typedef  TYPE_2__ spraycumul ;
struct TYPE_8__ {int sprayarr_len; int /*<<< orphan*/  sprayarr_val; } ;
typedef  TYPE_3__ sprayarr ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSET_TIMEOUT ; 
 int /*<<< orphan*/  NO_DEFAULT ; 
 int /*<<< orphan*/  ONE_WAY ; 
 scalar_t__ RPC_SUCCESS ; 
 int SPRAYMAX ; 
 int SPRAYOVERHEAD ; 
 int /*<<< orphan*/  SPRAYPROC_CLEAR ; 
 int /*<<< orphan*/  SPRAYPROC_GET ; 
 int /*<<< orphan*/  SPRAYPROC_SPRAY ; 
 int /*<<< orphan*/  SPRAYPROG ; 
 int /*<<< orphan*/  SPRAYVERS ; 
 int /*<<< orphan*/  TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC10 (int,int,double) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  spray_buffer ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 scalar_t__ xdr_sprayarr ; 
 scalar_t__ xdr_spraycumul ; 
 scalar_t__ xdr_void ; 

int
FUNC14(int argc, char *argv[])
{
	spraycumul	host_stats;
	sprayarr	host_array;
	CLIENT *cl;
	int c;
	u_int i;
	u_int count = 0;
	int delay = 0;
	int length = 0;
	double xmit_time;			/* time to receive data */

	while ((c = FUNC9(argc, argv, "c:d:l:")) != -1) {
		switch (c) {
		case 'c':
			count = FUNC0(optarg);
			break;
		case 'd':
			delay = FUNC0(optarg);
			break;
		case 'l':
			length = FUNC0(optarg);
			break;
		default:
			FUNC12();
			/* NOTREACHED */
		}
	}
	argc -= optind;
	argv += optind;

	if (argc != 1) {
		FUNC12();
		/* NOTREACHED */
	}


	/* Correct packet length. */
	if (length > SPRAYMAX) {
		length = SPRAYMAX;
	} else if (length < SPRAYOVERHEAD) {
		length = SPRAYOVERHEAD;
	} else {
		/* The RPC portion of the packet is a multiple of 32 bits. */
		length -= SPRAYOVERHEAD - 3;
		length &= ~3;
		length += SPRAYOVERHEAD;
	}


	/*
	 * The default value of count is the number of packets required
	 * to make the total stream size 100000 bytes.
	 */
	if (!count) {
		count = 100000 / length;
	}

	/* Initialize spray argument */
	host_array.sprayarr_len = length - SPRAYOVERHEAD;
	host_array.sprayarr_val = spray_buffer;
	

	/* create connection with server */
	cl = FUNC3(*argv, SPRAYPROG, SPRAYVERS, "udp");
	if (cl == NULL)
		FUNC6(1, "%s", FUNC4(""));


	/*
	 * For some strange reason, RPC 4.0 sets the default timeout, 
	 * thus timeouts specified in clnt_call() are always ignored.  
	 *
	 * The following (undocumented) hack resets the internal state
	 * of the client handle.
	 */
	FUNC2(cl, CLSET_TIMEOUT, &NO_DEFAULT);


	/* Clear server statistics */
	if (FUNC1(cl, SPRAYPROC_CLEAR, (xdrproc_t)xdr_void, NULL,
		(xdrproc_t)xdr_void, NULL, TIMEOUT) != RPC_SUCCESS)
		FUNC6(1, "%s", FUNC5(cl, ""));


	/* Spray server with packets */
	FUNC11 ("sending %u packets of length %d to %s ...", count, length,
	    *argv);
	FUNC8 (stdout);

	for (i = 0; i < count; i++) {
		FUNC1(cl, SPRAYPROC_SPRAY, (xdrproc_t)xdr_sprayarr,
		    &host_array, (xdrproc_t)xdr_void, NULL, ONE_WAY);

		if (delay) {
			FUNC13(delay);
		}
	}


	/* Collect statistics from server */
	if (FUNC1(cl, SPRAYPROC_GET, (xdrproc_t)xdr_void, NULL,
		(xdrproc_t)xdr_spraycumul, &host_stats, TIMEOUT) != RPC_SUCCESS)
		FUNC6(1, "%s", FUNC5(cl, ""));

	xmit_time = host_stats.clock.sec +
			(host_stats.clock.usec / 1000000.0);

	FUNC11 ("\n\tin %.2f seconds elapsed time\n", xmit_time);


	/* report dropped packets */
	if (host_stats.counter != count) {
		int packets_dropped = count - host_stats.counter;

		FUNC11("\t%d packets (%.2f%%) dropped\n",
			packets_dropped,
			100.0 * packets_dropped / count );
	} else {
		FUNC11("\tno packets dropped\n");
	}

	FUNC11("Sent:");
	FUNC10(count, length, xmit_time);

	FUNC11("Rcvd:");
	FUNC10(host_stats.counter, length, xmit_time);
	
	FUNC7 (0);
}