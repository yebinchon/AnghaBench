#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct bulk_checkin_state {scalar_t__ offset; int /*<<< orphan*/  f; scalar_t__ nr_written; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  obuf ;
typedef  int /*<<< orphan*/  ibuf ;
struct TYPE_7__ {unsigned char* next_out; int avail_out; unsigned char* next_in; scalar_t__ avail_in; } ;
typedef  TYPE_1__ git_zstream ;
typedef  int /*<<< orphan*/  git_hash_ctx ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_8__ {int /*<<< orphan*/  (* update_fn ) (int /*<<< orphan*/ *,unsigned char*,size_t) ;} ;

/* Variables and functions */
 unsigned int HASH_WRITE_OBJECT ; 
#define  Z_BUF_ERROR 130 
 int /*<<< orphan*/  Z_FINISH ; 
#define  Z_OK 129 
#define  Z_STREAM_END 128 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 unsigned int FUNC2 (unsigned char*,int,int,size_t) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  pack_compression_level ; 
 scalar_t__ pack_size_limit_cfg ; 
 scalar_t__ FUNC8 (int,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 TYPE_2__* the_hash_algo ; 

__attribute__((used)) static int FUNC10(struct bulk_checkin_state *state,
			  git_hash_ctx *ctx, off_t *already_hashed_to,
			  int fd, size_t size, enum object_type type,
			  const char *path, unsigned flags)
{
	git_zstream s;
	unsigned char obuf[16384];
	unsigned hdrlen;
	int status = Z_OK;
	int write_object = (flags & HASH_WRITE_OBJECT);
	off_t offset = 0;

	FUNC6(&s, pack_compression_level);

	hdrlen = FUNC2(obuf, sizeof(obuf), type, size);
	s.next_out = obuf + hdrlen;
	s.avail_out = sizeof(obuf) - hdrlen;

	while (status != Z_STREAM_END) {
		unsigned char ibuf[16384];

		if (size && !s.avail_in) {
			ssize_t rsize = size < sizeof(ibuf) ? size : sizeof(ibuf);
			ssize_t read_result = FUNC8(fd, ibuf, rsize);
			if (read_result < 0)
				FUNC1("failed to read from '%s'", path);
			if (read_result != rsize)
				FUNC0("failed to read %d bytes from '%s'",
				    (int)rsize, path);
			offset += rsize;
			if (*already_hashed_to < offset) {
				size_t hsize = offset - *already_hashed_to;
				if (rsize < hsize)
					hsize = rsize;
				if (hsize)
					the_hash_algo->update_fn(ctx, ibuf, hsize);
				*already_hashed_to = offset;
			}
			s.next_in = ibuf;
			s.avail_in = rsize;
			size -= rsize;
		}

		status = FUNC3(&s, size ? 0 : Z_FINISH);

		if (!s.avail_out || status == Z_STREAM_END) {
			if (write_object) {
				size_t written = s.next_out - obuf;

				/* would we bust the size limit? */
				if (state->nr_written &&
				    pack_size_limit_cfg &&
				    pack_size_limit_cfg < state->offset + written) {
					FUNC4(&s);
					return -1;
				}

				FUNC7(state->f, obuf, written);
				state->offset += written;
			}
			s.next_out = obuf;
			s.avail_out = sizeof(obuf);
		}

		switch (status) {
		case Z_OK:
		case Z_BUF_ERROR:
		case Z_STREAM_END:
			continue;
		default:
			FUNC0("unexpected deflate failure: %d", status);
		}
	}
	FUNC5(&s);
	return 0;
}