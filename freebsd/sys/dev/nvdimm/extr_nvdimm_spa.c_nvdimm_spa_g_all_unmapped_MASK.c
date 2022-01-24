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
typedef  struct vm_page* vm_page_t ;
typedef  int /*<<< orphan*/  vm_memattr_t ;
struct vm_page {int dummy; } ;
struct nvdimm_spa_dev {scalar_t__ spa_phys_base; int /*<<< orphan*/  spa_memattr; } ;
struct bio {int bio_ma_n; int bio_offset; int bio_ma_offset; int /*<<< orphan*/  bio_length; struct vm_page** bio_ma; } ;
typedef  int /*<<< orphan*/  maa ;

/* Variables and functions */
 int BIO_READ ; 
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct vm_page*,int) ; 
 int FUNC1 (struct vm_page**) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_page**,int,struct vm_page**,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_page*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct nvdimm_spa_dev *dev, struct bio *bp, int rw)
{
	struct vm_page maa[bp->bio_ma_n];
	vm_page_t ma[bp->bio_ma_n];
	vm_memattr_t mattr;
	int i;

	mattr = dev->spa_memattr;
	for (i = 0; i < FUNC1(ma); i++) {
		FUNC0(&maa[i], sizeof(maa[i]));
		FUNC4(&maa[i], dev->spa_phys_base +
		    FUNC3(bp->bio_offset) + PAGE_SIZE * i, mattr);
		ma[i] = &maa[i];
	}
	if (rw == BIO_READ)
		FUNC2(ma, bp->bio_offset & PAGE_MASK, bp->bio_ma,
		    bp->bio_ma_offset, bp->bio_length);
	else
		FUNC2(bp->bio_ma, bp->bio_ma_offset, ma,
		    bp->bio_offset & PAGE_MASK, bp->bio_length);
}