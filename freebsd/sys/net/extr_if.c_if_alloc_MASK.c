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
typedef  int /*<<< orphan*/  u_char ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IF_NODOM ; 
 struct ifnet* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct ifnet *
FUNC1(u_char type)
{

	return (FUNC0(type, IF_NODOM));
}