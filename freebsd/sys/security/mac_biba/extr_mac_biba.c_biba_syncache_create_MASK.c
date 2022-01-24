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
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;
struct inpcb {struct label* inp_label; } ;

/* Variables and functions */
 struct mac_biba* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_biba*,struct mac_biba*) ; 

__attribute__((used)) static void
FUNC2(struct label *label, struct inpcb *inp)
{
	struct mac_biba *source, *dest;

	source = FUNC0(inp->inp_label);
	dest = FUNC0(label);
	FUNC1(source, dest);
}