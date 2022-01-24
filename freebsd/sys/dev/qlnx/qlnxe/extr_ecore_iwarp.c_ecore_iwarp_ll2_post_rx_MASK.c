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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ecore_iwarp_ll2_buff {scalar_t__ buff_size; int /*<<< orphan*/  data_phys_addr; int /*<<< orphan*/  data; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ecore_iwarp_ll2_buff*) ; 
 int FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecore_iwarp_ll2_buff*,int) ; 

__attribute__((used)) static int
FUNC4(struct ecore_hwfn *p_hwfn,
			struct ecore_iwarp_ll2_buff *buf,
			u8 handle)
{
	enum _ecore_status_t rc;

	rc = FUNC3(
		p_hwfn,
		handle,
		buf->data_phys_addr,
		(u16)buf->buff_size,
		buf, 1);

	if (rc) {
		FUNC0(p_hwfn, false,
			  "Failed to repost rx buffer to ll2 rc = %d, handle=%d\n",
			  rc, handle);
		FUNC1(
			p_hwfn->p_dev,
			buf->data,
			buf->data_phys_addr,
			buf->buff_size);
		FUNC2(p_hwfn->p_dev, buf);
	}

	return rc;
}