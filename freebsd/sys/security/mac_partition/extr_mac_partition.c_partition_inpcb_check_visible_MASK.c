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
struct ucred {int /*<<< orphan*/  cr_label; } ;
struct label {int dummy; } ;
struct inpcb {TYPE_1__* inp_cred; } ;
struct TYPE_2__ {int /*<<< orphan*/  cr_label; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct ucred *cred, struct inpcb *inp,
    struct label *inplabel)
{
	int error;

	error = FUNC0(cred->cr_label, inp->inp_cred->cr_label);

	return (error ? ENOENT : 0);
}