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
struct ucred {int dummy; } ;
struct bpf_d {int /*<<< orphan*/  bd_label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ucred*,struct bpf_d*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bpfdesc_create ; 

void
FUNC1(struct ucred *cred, struct bpf_d *d)
{

	FUNC0(bpfdesc_create, cred, d, d->bd_label);
}