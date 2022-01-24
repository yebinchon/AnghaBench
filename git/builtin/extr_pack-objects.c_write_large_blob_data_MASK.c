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
struct object_id {int dummy; } ;
struct hashfile {int dummy; } ;
struct git_istream {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  obuf ;
typedef  int /*<<< orphan*/  ibuf ;
struct TYPE_5__ {unsigned char* next_in; int avail_in; unsigned char* next_out; int avail_out; } ;
typedef  TYPE_1__ git_zstream ;

/* Variables and functions */
 int Z_BUF_ERROR ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hashfile*,unsigned char*,int) ; 
 int FUNC6 (struct object_id const*) ; 
 int /*<<< orphan*/  pack_compression_level ; 
 int FUNC7 (struct git_istream*,unsigned char*,int) ; 

__attribute__((used)) static unsigned long FUNC8(struct git_istream *st, struct hashfile *f,
					   const struct object_id *oid)
{
	git_zstream stream;
	unsigned char ibuf[1024 * 16];
	unsigned char obuf[1024 * 16];
	unsigned long olen = 0;

	FUNC4(&stream, pack_compression_level);

	for (;;) {
		ssize_t readlen;
		int zret = Z_OK;
		readlen = FUNC7(st, ibuf, sizeof(ibuf));
		if (readlen == -1)
			FUNC1(FUNC0("unable to read %s"), FUNC6(oid));

		stream.next_in = ibuf;
		stream.avail_in = readlen;
		while ((stream.avail_in || readlen == 0) &&
		       (zret == Z_OK || zret == Z_BUF_ERROR)) {
			stream.next_out = obuf;
			stream.avail_out = sizeof(obuf);
			zret = FUNC2(&stream, readlen ? 0 : Z_FINISH);
			FUNC5(f, obuf, stream.next_out - obuf);
			olen += stream.next_out - obuf;
		}
		if (stream.avail_in)
			FUNC1(FUNC0("deflate error (%d)"), zret);
		if (readlen == 0) {
			if (zret != Z_STREAM_END)
				FUNC1(FUNC0("deflate error (%d)"), zret);
			break;
		}
	}
	FUNC3(&stream);
	return olen;
}