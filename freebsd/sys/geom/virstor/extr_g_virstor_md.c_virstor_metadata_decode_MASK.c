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
struct g_virstor_metadata {void* flags; void* chunk_reserved; void* chunk_next; void* chunk_count; void* provsize; void* no; int /*<<< orphan*/  provider; void* md_count; void* md_id; void* md_chunk_size; void* md_virsize; int /*<<< orphan*/  md_name; void* md_version; int /*<<< orphan*/  md_magic; } ;
typedef  int /*<<< orphan*/  bin_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(unsigned char *data, struct g_virstor_metadata *md)
{
	bin_stream_t bs;

	FUNC0(&bs, (char *)(data));

	FUNC1(&bs, md->md_magic, sizeof(md->md_magic));
	md->md_version = FUNC3(&bs);
	FUNC1(&bs, md->md_name, sizeof(md->md_name));
	md->md_virsize = FUNC4(&bs);
	md->md_chunk_size = FUNC3(&bs);
	md->md_id = FUNC3(&bs);
	md->md_count = FUNC2(&bs);

	FUNC1(&bs, md->provider, sizeof(md->provider));
	md->no = FUNC2(&bs);
	md->provsize = FUNC4(&bs);
	md->chunk_count = FUNC3(&bs);
	md->chunk_next = FUNC3(&bs);
	md->chunk_reserved = FUNC2(&bs);
	md->flags = FUNC2(&bs);
}