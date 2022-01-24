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
struct firewire_comm {struct crom_chunk* crom_root; struct crom_src* crom_src; struct crom_src_buf* crom_src_buf; } ;
struct crom_src_buf {int /*<<< orphan*/  hw; int /*<<< orphan*/  vendor; } ;
struct crom_src {int /*<<< orphan*/  chunk_list; } ;
struct crom_chunk {int dummy; } ;
struct TYPE_2__ {char* pr_hostname; int /*<<< orphan*/  pr_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSRKEY_HW ; 
 int /*<<< orphan*/  CSRKEY_NCAP ; 
 int /*<<< orphan*/  CSRKEY_VENDOR ; 
 int CSRVAL_VENDOR_PRIVATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int __FreeBSD_version ; 
 int /*<<< orphan*/  FUNC1 (struct crom_chunk*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct crom_src*,int /*<<< orphan*/ *,struct crom_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct crom_chunk*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct crom_src*,struct crom_chunk*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__ prison0 ; 

__attribute__((used)) static void
FUNC7(struct firewire_comm *fc)
{
	struct crom_src_buf *buf;
	struct crom_src *src;
	struct crom_chunk *root;

	buf =  fc->crom_src_buf;
	src = fc->crom_src;
	root = fc->crom_root;

	FUNC0(&src->chunk_list);

	FUNC1(root, sizeof(struct crom_chunk));
	FUNC2(src, NULL, root, 0);
	FUNC3(root, CSRKEY_NCAP, 0x0083c0); /* XXX */
	/* private company_id */
	FUNC3(root, CSRKEY_VENDOR, CSRVAL_VENDOR_PRIVATE);
	FUNC4(src, root, &buf->vendor, "FreeBSD Project");
	FUNC3(root, CSRKEY_HW, __FreeBSD_version);
	FUNC5(&prison0.pr_mtx);
	FUNC4(src, root, &buf->hw, prison0.pr_hostname);
	FUNC6(&prison0.pr_mtx);
}