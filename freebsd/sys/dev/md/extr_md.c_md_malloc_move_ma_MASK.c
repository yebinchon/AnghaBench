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
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int /*<<< orphan*/  u_char ;
struct sf_buf {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int EDOOFUS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
#define  MD_MALLOC_MOVE_CMP 132 
#define  MD_MALLOC_MOVE_FILL 131 
#define  MD_MALLOC_MOVE_READ 130 
#define  MD_MALLOC_MOVE_WRITE 129 
#define  MD_MALLOC_MOVE_ZERO 128 
 int PAGE_SIZE ; 
 int SFB_CPUPRIVATE ; 
 int SFB_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (char*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int,unsigned int) ; 
 scalar_t__ md_malloc_wait ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct sf_buf* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sf_buf*) ; 
 scalar_t__ FUNC10 (struct sf_buf*) ; 

__attribute__((used)) static int
FUNC11(vm_page_t **mp, int *ma_offs, unsigned sectorsize,
    void *ptr, u_char fill, int op)
{
	struct sf_buf *sf;
	vm_page_t m, *mp1;
	char *p, first;
	off_t *uc;
	unsigned n;
	int error, i, ma_offs1, sz, first_read;

	m = NULL;
	error = 0;
	sf = NULL;
	/* if (op == MD_MALLOC_MOVE_CMP) { gcc */
		first = 0;
		first_read = 0;
		uc = ptr;
		mp1 = *mp;
		ma_offs1 = *ma_offs;
	/* } */
	FUNC6();
	for (n = sectorsize; n != 0; n -= sz) {
		sz = FUNC4(PAGE_SIZE - *ma_offs, n);
		if (m != **mp) {
			if (sf != NULL)
				FUNC9(sf);
			m = **mp;
			sf = FUNC8(m, SFB_CPUPRIVATE |
			    (md_malloc_wait ? 0 : SFB_NOWAIT));
			if (sf == NULL) {
				error = ENOMEM;
				break;
			}
		}
		p = (char *)FUNC10(sf) + *ma_offs;
		switch (op) {
		case MD_MALLOC_MOVE_ZERO:
			FUNC2(p, sz);
			break;
		case MD_MALLOC_MOVE_FILL:
			FUNC5(p, fill, sz);
			break;
		case MD_MALLOC_MOVE_READ:
			FUNC1(ptr, p, sz);
			FUNC3(p, sz);
			break;
		case MD_MALLOC_MOVE_WRITE:
			FUNC1(p, ptr, sz);
			break;
		case MD_MALLOC_MOVE_CMP:
			for (i = 0; i < sz; i++, p++) {
				if (!first_read) {
					*uc = (u_char)*p;
					first = *p;
					first_read = 1;
				} else if (*p != first) {
					error = EDOOFUS;
					break;
				}
			}
			break;
		default:
			FUNC0(0, ("md_malloc_move_ma unknown op %d\n", op));
			break;
		}
		if (error != 0)
			break;
		*ma_offs += sz;
		*ma_offs %= PAGE_SIZE;
		if (*ma_offs == 0)
			(*mp)++;
		ptr = (char *)ptr + sz;
	}

	if (sf != NULL)
		FUNC9(sf);
	FUNC7();
	if (op == MD_MALLOC_MOVE_CMP && error != 0) {
		*mp = mp1;
		*ma_offs = ma_offs1;
	}
	return (error);
}