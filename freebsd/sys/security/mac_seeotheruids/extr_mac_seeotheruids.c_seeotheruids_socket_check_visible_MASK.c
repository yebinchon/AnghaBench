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
struct socket {int /*<<< orphan*/  so_cred; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ucred*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct ucred *cred, struct socket *so,
    struct label *solabel)
{

	return (FUNC0(cred, so->so_cred));
}