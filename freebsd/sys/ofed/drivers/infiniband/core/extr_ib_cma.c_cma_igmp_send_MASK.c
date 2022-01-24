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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct net_device {int /*<<< orphan*/  if_vnet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int FUNC2 (struct net_device*,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct net_device*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr*,union ib_gid const*) ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev, const union ib_gid *mgid, bool join)
{
	int retval;

	if (ndev) {
		union {
			struct sockaddr sock;
			struct sockaddr_storage storage;
		} addr;

		FUNC4(&addr.sock, mgid);

		FUNC1(ndev->if_vnet);
		if (join)
			retval = -FUNC2(ndev, &addr.sock, NULL);
		else
			retval = -FUNC3(ndev, &addr.sock);
		FUNC0();
	} else {
		retval = -ENODEV;
	}
	return retval;
}