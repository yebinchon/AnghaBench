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
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ off_t ;
struct TYPE_5__ {size_t avail_in; char* next_in; char* next_out; scalar_t__ avail_out; int /*<<< orphan*/ * opaque; int /*<<< orphan*/ * bzfree; int /*<<< orphan*/ * bzalloc; } ;
typedef  TYPE_1__ bz_stream ;

/* Variables and functions */
 scalar_t__ BUFLEN ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int const FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  BZ_DATA_ERROR 132 
#define  BZ_DATA_ERROR_MAGIC 131 
#define  BZ_MEM_ERROR 130 
#define  BZ_OK 129 
#define  BZ_STREAM_END 128 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ FUNC9 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  tflag ; 
 scalar_t__ FUNC10 (int,char*,scalar_t__) ; 

__attribute__((used)) static off_t
FUNC11(int in, int out, char *pre, size_t prelen, off_t *bytes_in)
{
	int		ret, end_of_file, cold = 0;
	off_t		bytes_out = 0;
	bz_stream	bzs;
	static char	*inbuf, *outbuf;

	if (inbuf == NULL)
		inbuf = FUNC5(BUFLEN);
	if (outbuf == NULL)
		outbuf = FUNC5(BUFLEN);
	if (inbuf == NULL || outbuf == NULL)
	        FUNC6("malloc");

	bzs.bzalloc = NULL;
	bzs.bzfree = NULL;
	bzs.opaque = NULL;

	end_of_file = 0;
	ret = FUNC2(&bzs, 0, 0);
	if (ret != BZ_OK)
	        FUNC7("bzip2 init");

	/* Prepend. */
	bzs.avail_in = prelen;
	bzs.next_in = pre;

	if (bytes_in)
		*bytes_in = prelen;

	while (ret == BZ_OK) {
		FUNC3();
	        if (bzs.avail_in == 0 && !end_of_file) {
			ssize_t	n;

	                n = FUNC9(in, inbuf, BUFLEN);
	                if (n < 0)
	                        FUNC6("read");
	                if (n == 0)
	                        end_of_file = 1;
			FUNC4(n);
	                bzs.next_in = inbuf;
	                bzs.avail_in = n;
			if (bytes_in)
				*bytes_in += n;
	        }

	        bzs.next_out = outbuf;
	        bzs.avail_out = BUFLEN;
	        ret = FUNC0(&bzs);

	        switch (ret) {
	        case BZ_STREAM_END:
	        case BZ_OK:
	                if (ret == BZ_OK && end_of_file) {
				/*
				 * If we hit this after a stream end, consider
				 * it as the end of the whole file and don't
				 * bail out.
				 */
				if (cold == 1)
					ret = BZ_STREAM_END;
				else
					FUNC7("truncated file");
			}
			cold = 0;
	                if (!tflag && bzs.avail_out != BUFLEN) {
				ssize_t	n;

	                        n = FUNC10(out, outbuf, BUFLEN - bzs.avail_out);
	                        if (n < 0)
	                                FUNC6("write");
	                	bytes_out += n;
	                }
			if (ret == BZ_STREAM_END && !end_of_file) {
				if (FUNC1(&bzs) != BZ_OK ||
				    FUNC2(&bzs, 0, 0) != BZ_OK)
					FUNC7("bzip2 re-init");
				cold = 1;
				ret = BZ_OK;
			}
			break;

	        case BZ_DATA_ERROR:
	                FUNC8("bzip2 data integrity error");
			break;

	        case BZ_DATA_ERROR_MAGIC:
	                FUNC8("bzip2 magic number error");
			break;

	        case BZ_MEM_ERROR:
	                FUNC8("bzip2 out of memory");
			break;
		
		default:	
			FUNC8("unknown bzip2 error: %d", ret);
			break;
	        }
	}

	if (ret != BZ_STREAM_END || FUNC1(&bzs) != BZ_OK)
	        return (-1);

	return (bytes_out);
}