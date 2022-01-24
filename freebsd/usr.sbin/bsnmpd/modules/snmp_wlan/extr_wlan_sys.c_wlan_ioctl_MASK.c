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
typedef  int /*<<< orphan*/  uint16_t ;
struct ieee80211req {int i_val; size_t i_len; void* i_data; int /*<<< orphan*/  i_type; int /*<<< orphan*/  i_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SIOCG80211 ; 
 int /*<<< orphan*/  SIOCS80211 ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211req*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(char *wif_name, uint16_t req_type, int *val, void *arg,
     size_t *argsize, int set)
{
	struct ieee80211req ireq;

	FUNC1(&ireq, 0, sizeof(struct ieee80211req));
	FUNC3(ireq.i_name, wif_name, IFNAMSIZ);

	ireq.i_type = req_type;
	ireq.i_val = *val;
	ireq.i_len = *argsize;
	ireq.i_data = arg;

	if (FUNC0(sock, set ? SIOCS80211 : SIOCG80211, &ireq) < 0) {
		FUNC4(LOG_ERR, "iface %s - %s param: ioctl(%d) "
		    "failed: %s", wif_name, set ? "set" : "get",
		    req_type, FUNC2(errno));
		return (-1);
	}

	*argsize = ireq.i_len;
	*val = ireq.i_val;

	return (0);
}