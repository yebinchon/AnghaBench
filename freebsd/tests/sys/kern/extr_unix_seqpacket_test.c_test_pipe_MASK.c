#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t pktsize; int numpkts; int so; } ;
typedef  TYPE_1__ test_pipe_thread_data_t ;
typedef  int /*<<< orphan*/  sndbufsize ;
typedef  int /*<<< orphan*/  rcvbufsize ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  SO_SNDBUF ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  test_pipe_reader ; 
 int /*<<< orphan*/  test_pipe_writer ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(int sndbufsize, int rcvbufsize)
{
	test_pipe_thread_data_t writer_data, reader_data;
	pthread_t writer, reader;
	int sv[2];
	const size_t pktsize = FUNC2(sndbufsize, rcvbufsize) / 4;
	int numpkts;

	/* setup the socket pair */
	FUNC4(sv);
	/* Setup the buffers */
	FUNC0(0, FUNC7(sv[0], SOL_SOCKET, SO_SNDBUF, &sndbufsize,
	    sizeof(sndbufsize)));
	FUNC0(0, FUNC7(sv[1], SOL_SOCKET, SO_RCVBUF, &rcvbufsize,
	    sizeof(rcvbufsize)));

	/* Send a total amount of data comfortably greater than the buffers */
	numpkts = FUNC1(sndbufsize, rcvbufsize) * 8 / pktsize;

	/* Start the child threads */
	writer_data.pktsize = pktsize;
	writer_data.numpkts = numpkts;
	writer_data.so = sv[0];
	reader_data.pktsize = pktsize;
	reader_data.numpkts = numpkts;
	reader_data.so = sv[1];
	FUNC0(0, FUNC5(&writer, NULL, test_pipe_writer,
	    				 (void*)&writer_data));
	/*
	 * Give the writer time to start writing, and hopefully block, before
	 * starting the reader.  This increases the likelihood of the test case
	 * failing due to PR kern/185812
	 */
	FUNC8(1000);
	FUNC0(0, FUNC5(&reader, NULL, test_pipe_reader,
	    				 (void*)&reader_data));

	/* Join the children */
	FUNC0(0, FUNC6(writer, NULL));
	FUNC0(0, FUNC6(reader, NULL));
	FUNC3(sv[0]);
	FUNC3(sv[1]);
}