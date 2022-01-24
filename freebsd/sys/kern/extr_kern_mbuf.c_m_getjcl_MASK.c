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
typedef  int /*<<< orphan*/  uma_zone_t ;
struct mbuf {int flags; short type; } ;
struct mb_args {int flags; short type; } ;

/* Variables and functions */
 int MCLBYTES ; 
 struct mbuf* FUNC0 (int,short,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct mbuf* FUNC2 (int /*<<< orphan*/ ,struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  zone_mbuf ; 

struct mbuf *
FUNC4(int how, short type, int flags, int size)
{
	struct mb_args args;
	struct mbuf *m, *n;
	uma_zone_t zone;

	if (size == MCLBYTES)
		return FUNC0(how, type, flags);

	args.flags = flags;
	args.type = type;

	m = FUNC2(zone_mbuf, &args, how);
	if (m == NULL)
		return (NULL);

	zone = FUNC1(size);
	n = FUNC2(zone, m, how);
	if (n == NULL) {
		FUNC3(zone_mbuf, m);
		return (NULL);
	}
	return (m);
}