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
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int EPROTONOSUPPORT ; 
 int FUNC0 (struct ib_device*,union ib_gid const*,int /*<<< orphan*/ ,int (*) (union ib_gid const*,struct ib_gid_attr const*,void*),void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*,int /*<<< orphan*/ ) ; 

int FUNC2(struct ib_device *device,
			  const union ib_gid *gid,
			  u8 port_num,
			  bool (*filter)(const union ib_gid *gid,
					 const struct ib_gid_attr *,
					 void *),
			  void *context, u16 *index)
{
	/* Only RoCE GID table supports filter function */
	if (!FUNC1(device, port_num) && filter)
		return -EPROTONOSUPPORT;

	return FUNC0(device, gid,
					   port_num, filter,
					   context, index);
}