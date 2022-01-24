#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pack_header {int dummy; } ;
struct hashfile {int dummy; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_5__ {scalar_t__ pack_size; int /*<<< orphan*/  pack_name; } ;
struct TYPE_4__ {scalar_t__ rawsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,double) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hashfile*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  progress_state ; 
 TYPE_2__* reuse_packfile ; 
 double reuse_packfile_objects ; 
 scalar_t__ reuse_packfile_offset ; 
 TYPE_1__* the_hash_algo ; 
 double written ; 
 int FUNC9 (int,unsigned char*,int) ; 

__attribute__((used)) static off_t FUNC10(struct hashfile *f)
{
	unsigned char buffer[8192];
	off_t to_write, total;
	int fd;

	if (!FUNC7(reuse_packfile))
		FUNC2(FUNC0("packfile is invalid: %s"), reuse_packfile->pack_name);

	fd = FUNC5(reuse_packfile->pack_name);
	if (fd < 0)
		FUNC3(FUNC0("unable to open packfile for reuse: %s"),
			  reuse_packfile->pack_name);

	if (FUNC8(fd, sizeof(struct pack_header), SEEK_SET) == -1)
		FUNC3(FUNC0("unable to seek in reused packfile"));

	if (reuse_packfile_offset < 0)
		reuse_packfile_offset = reuse_packfile->pack_size - the_hash_algo->rawsz;

	total = to_write = reuse_packfile_offset - sizeof(struct pack_header);

	while (to_write) {
		int read_pack = FUNC9(fd, buffer, sizeof(buffer));

		if (read_pack <= 0)
			FUNC3(FUNC0("unable to read from reused packfile"));

		if (read_pack > to_write)
			read_pack = to_write;

		FUNC6(f, buffer, read_pack);
		to_write -= read_pack;

		/*
		 * We don't know the actual number of objects written,
		 * only how many bytes written, how many bytes total, and
		 * how many objects total. So we can fake it by pretending all
		 * objects we are writing are the same size. This gives us a
		 * smooth progress meter, and at the end it matches the true
		 * answer.
		 */
		written = reuse_packfile_objects *
				(((double)(total - to_write)) / total);
		FUNC4(progress_state, written);
	}

	FUNC1(fd);
	written = reuse_packfile_objects;
	FUNC4(progress_state, written);
	return reuse_packfile_offset - sizeof(struct pack_header);
}