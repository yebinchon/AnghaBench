#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct hashfile {int dummy; } ;
typedef  int /*<<< orphan*/  outbuf ;
struct TYPE_5__ {unsigned int avail_in; unsigned char* next_out; int avail_out; unsigned int total_out; void* next_in; } ;
typedef  TYPE_1__ git_zstream ;

/* Variables and functions */
 int /*<<< orphan*/  Z_FINISH ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hashfile*,unsigned char*,int) ; 
 int /*<<< orphan*/  zlib_compression_level ; 

__attribute__((used)) static int FUNC6(struct hashfile *f, void *in, unsigned int size)
{
	git_zstream stream;
	int status;
	unsigned char outbuf[4096];

	FUNC4(&stream, zlib_compression_level);
	stream.next_in = in;
	stream.avail_in = size;

	do {
		stream.next_out = outbuf;
		stream.avail_out = sizeof(outbuf);
		status = FUNC2(&stream, Z_FINISH);
		FUNC5(f, outbuf, sizeof(outbuf) - stream.avail_out);
	} while (status == Z_OK);

	if (status != Z_STREAM_END)
		FUNC1(FUNC0("unable to deflate appended object (%d)"), status);
	size = stream.total_out;
	FUNC3(&stream);
	return size;
}