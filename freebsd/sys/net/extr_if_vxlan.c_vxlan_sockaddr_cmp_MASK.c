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
struct TYPE_2__ {int /*<<< orphan*/  sa_len; } ;
union vxlan_sockaddr {TYPE_1__ sa; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,struct sockaddr const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(const union vxlan_sockaddr *vxladdr,
    const struct sockaddr *sa)
{

	return (FUNC0(&vxladdr->sa, sa, vxladdr->sa.sa_len));
}