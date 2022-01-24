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
struct iwnstats {scalar_t__ s; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 struct iwnstats* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*) ; 

__attribute__((used)) static struct iwnstats *
FUNC4(const char *ifname)
{
	struct iwnstats *is;
	char buf[128];

	is = FUNC0(1, sizeof(struct iwnstats));
	if (is == NULL)
		return (NULL);

	FUNC3(buf, sizeof(buf), "/dev/%s", ifname);
	is->s = FUNC2(buf, O_RDWR);
	if (is->s < 0)
		FUNC1(1, "open");

	return (is);
}