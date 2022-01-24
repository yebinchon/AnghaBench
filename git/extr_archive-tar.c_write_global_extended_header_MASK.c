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
struct ustar_header {int /*<<< orphan*/  name; int /*<<< orphan*/ * typeflag; } ;
struct strbuf {int len; struct ustar_header* buf; } ;
struct object_id {int dummy; } ;
struct archiver_args {int /*<<< orphan*/  time; struct object_id* commit_oid; } ;
typedef  int /*<<< orphan*/  header ;
struct TYPE_2__ {int /*<<< orphan*/  hexsz; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  TYPEFLAG_GLOBAL_HEADER ; 
 int /*<<< orphan*/  USTAR_MAX_MTIME ; 
 int /*<<< orphan*/  FUNC0 (struct ustar_header*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC2 (struct archiver_args*,struct ustar_header*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 TYPE_1__* the_hash_algo ; 
 int /*<<< orphan*/  FUNC6 (struct ustar_header*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static void FUNC8(struct archiver_args *args)
{
	const struct object_id *oid = args->commit_oid;
	struct strbuf ext_header = STRBUF_INIT;
	struct ustar_header header;
	unsigned int mode;

	if (oid)
		FUNC3(&ext_header, "comment",
					 FUNC1(oid),
					 the_hash_algo->hexsz);
	if (args->time > USTAR_MAX_MTIME) {
		FUNC4(&ext_header, "mtime",
					      args->time);
		args->time = USTAR_MAX_MTIME;
	}

	if (!ext_header.len)
		return;

	FUNC0(&header, 0, sizeof(header));
	*header.typeflag = TYPEFLAG_GLOBAL_HEADER;
	mode = 0100666;
	FUNC7(header.name, sizeof(header.name), "pax_global_header");
	FUNC2(args, &header, mode, ext_header.len);
	FUNC6(&header, sizeof(header));
	FUNC6(ext_header.buf, ext_header.len);
	FUNC5(&ext_header);
}