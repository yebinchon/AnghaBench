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
struct libalias {int dummy; } ;
struct ip {int dummy; } ;
struct alias_data {int /*<<< orphan*/  dport; int /*<<< orphan*/  oaddr; int /*<<< orphan*/  aport; int /*<<< orphan*/  aaddr; int /*<<< orphan*/  lnk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct libalias*,struct ip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct libalias *la, struct ip *pip, struct alias_data *ah)
{
	
	FUNC0(la, pip, ah->lnk, ah->aaddr, ah->aport,
 			    ah->oaddr, ah->dport);
	return (0);
}