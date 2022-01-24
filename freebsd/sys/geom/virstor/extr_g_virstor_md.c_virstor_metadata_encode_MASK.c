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
struct g_virstor_metadata {int /*<<< orphan*/  flags; int /*<<< orphan*/  chunk_reserved; int /*<<< orphan*/  chunk_next; int /*<<< orphan*/  chunk_count; int /*<<< orphan*/  provsize; int /*<<< orphan*/  no; int /*<<< orphan*/  provider; int /*<<< orphan*/  md_count; int /*<<< orphan*/  md_id; int /*<<< orphan*/  md_chunk_size; int /*<<< orphan*/  md_virsize; int /*<<< orphan*/  md_name; int /*<<< orphan*/  md_version; int /*<<< orphan*/  md_magic; } ;
typedef  int /*<<< orphan*/  bin_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC5(struct g_virstor_metadata *md, unsigned char *data)
{
	bin_stream_t bs;

	FUNC0(&bs, data);

	FUNC1(&bs, md->md_magic, sizeof(md->md_magic));
	FUNC3(&bs, md->md_version);
	FUNC1(&bs, md->md_name, sizeof(md->md_name));
	FUNC4(&bs, md->md_virsize);
	FUNC3(&bs, md->md_chunk_size);
	FUNC3(&bs, md->md_id);
	FUNC2(&bs, md->md_count);

	FUNC1(&bs, md->provider, sizeof(md->provider));
	FUNC2(&bs, md->no);
	FUNC4(&bs, md->provsize);
	FUNC3(&bs, md->chunk_count);
	FUNC3(&bs, md->chunk_next);
	FUNC2(&bs, md->chunk_reserved);
	FUNC2(&bs, md->flags);
}