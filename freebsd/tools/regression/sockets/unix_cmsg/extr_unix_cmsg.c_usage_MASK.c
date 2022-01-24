#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct TYPE_4__ {char* desc; } ;
struct TYPE_3__ {char* desc; } ;

/* Variables and functions */
 size_t TEST_DGRAM_TBL_SIZE ; 
 size_t TEST_STREAM_TBL_SIZE ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_2__* test_dgram_tbl ; 
 TYPE_1__* test_stream_tbl ; 

__attribute__((used)) static void
FUNC2(bool verbose)
{
	u_int i;

	FUNC1("usage: %s [-dh] [-n num] [-s size] [-t type] "
	    "[-z value] [testno]\n", FUNC0());
	if (!verbose)
		return;
	FUNC1("\n Options are:\n\
  -d            Output debugging information\n\
  -h            Output the help message and exit\n\
  -n num        Number of messages to send\n\
  -s size       Specify size of data for IPC\n\
  -t type       Specify socket type (stream, dgram) for tests\n\
  -z value      Do not send data in a message (bit 0x1), do not send\n\
                data array associated with a cmsghdr structure (bit 0x2)\n\
  testno        Run one test by its number (require the -t option)\n\n");
	FUNC1(" Available tests for stream sockets:\n");
	for (i = 0; i < TEST_STREAM_TBL_SIZE; ++i)
		FUNC1("   %u: %s\n", i, test_stream_tbl[i].desc);
	FUNC1("\n Available tests for datagram sockets:\n");
	for (i = 0; i < TEST_DGRAM_TBL_SIZE; ++i)
		FUNC1("   %u: %s\n", i, test_dgram_tbl[i].desc);
}