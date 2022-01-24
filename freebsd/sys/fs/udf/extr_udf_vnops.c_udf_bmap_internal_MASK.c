#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct udf_node {int hash_id; struct file_entry* fentry; struct udf_mnt* udfmp; } ;
struct udf_mnt {int bshift; int part_start; int s_table_entries; int p_sectors; TYPE_3__* s_table; } ;
struct short_ad {int /*<<< orphan*/  pos; } ;
struct TYPE_4__ {int /*<<< orphan*/  lb_num; } ;
struct long_ad {TYPE_1__ loc; } ;
struct icb_tag {int strat_type; int flags; } ;
struct file_entry {int /*<<< orphan*/  l_ea; int /*<<< orphan*/  l_ad; struct icb_tag icbtag; } ;
typedef  int off_t ;
typedef  int daddr_t ;
struct TYPE_6__ {TYPE_2__* entries; } ;
struct TYPE_5__ {int /*<<< orphan*/  map; int /*<<< orphan*/  org; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 void* FUNC0 (int /*<<< orphan*/ ,struct file_entry*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int UDF_INVALID_BMAP ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  long_ad ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  short_ad ; 

__attribute__((used)) static int
FUNC5(struct udf_node *node, off_t offset, daddr_t *sector,
    uint32_t *max_size)
{
	struct udf_mnt *udfmp;
	struct file_entry *fentry;
	void *icb;
	struct icb_tag *tag;
	uint32_t icblen = 0;
	daddr_t lsector;
	int ad_offset, ad_num = 0;
	int i, p_offset;

	udfmp = node->udfmp;
	fentry = node->fentry;
	tag = &fentry->icbtag;

	switch (FUNC2(tag->strat_type)) {
	case 4:
		break;

	case 4096:
		FUNC4("Cannot deal with strategy4096 yet!\n");
		return (ENODEV);

	default:
		FUNC4("Unknown strategy type %d\n", tag->strat_type);
		return (ENODEV);
	}

	switch (FUNC2(tag->flags) & 0x7) {
	case 0:
		/*
		 * The allocation descriptor field is filled with short_ad's.
		 * If the offset is beyond the current extent, look for the
		 * next extent.
		 */
		do {
			offset -= icblen;
			ad_offset = sizeof(struct short_ad) * ad_num;
			if (ad_offset > FUNC3(fentry->l_ad)) {
				FUNC4("File offset out of bounds\n");
				return (EINVAL);
			}
			icb = FUNC0(short_ad, fentry,
			    FUNC3(fentry->l_ea) + ad_offset);
			icblen = FUNC1(short_ad, icb);
			ad_num++;
		} while(offset >= icblen);

		lsector = (offset  >> udfmp->bshift) +
		    FUNC3(((struct short_ad *)(icb))->pos);

		*max_size = icblen - offset;

		break;
	case 1:
		/*
		 * The allocation descriptor field is filled with long_ad's
		 * If the offset is beyond the current extent, look for the
		 * next extent.
		 */
		do {
			offset -= icblen;
			ad_offset = sizeof(struct long_ad) * ad_num;
			if (ad_offset > FUNC3(fentry->l_ad)) {
				FUNC4("File offset out of bounds\n");
				return (EINVAL);
			}
			icb = FUNC0(long_ad, fentry,
			    FUNC3(fentry->l_ea) + ad_offset);
			icblen = FUNC1(long_ad, icb);
			ad_num++;
		} while(offset >= icblen);

		lsector = (offset >> udfmp->bshift) +
		    FUNC3(((struct long_ad *)(icb))->loc.lb_num);

		*max_size = icblen - offset;

		break;
	case 3:
		/*
		 * This type means that the file *data* is stored in the
		 * allocation descriptor field of the file entry.
		 */
		*max_size = 0;
		*sector = node->hash_id + udfmp->part_start;

		return (UDF_INVALID_BMAP);
	case 2:
		/* DirectCD does not use extended_ad's */
	default:
		FUNC4("Unsupported allocation descriptor %d\n",
		       tag->flags & 0x7);
		return (ENODEV);
	}

	*sector = lsector + udfmp->part_start;

	/*
	 * Check the sparing table.  Each entry represents the beginning of
	 * a packet.
	 */
	if (udfmp->s_table != NULL) {
		for (i = 0; i< udfmp->s_table_entries; i++) {
			p_offset =
			    lsector - FUNC3(udfmp->s_table->entries[i].org);
			if ((p_offset < udfmp->p_sectors) && (p_offset >= 0)) {
				*sector =
				   FUNC3(udfmp->s_table->entries[i].map) +
				    p_offset;
				break;
			}
		}
	}

	return (0);
}