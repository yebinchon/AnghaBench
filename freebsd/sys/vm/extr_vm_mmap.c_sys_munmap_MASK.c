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
struct thread {int dummy; } ;
struct munmap_args {int /*<<< orphan*/  len; scalar_t__ addr; } ;

/* Variables and functions */
 int FUNC0 (struct thread*,uintptr_t,int /*<<< orphan*/ ) ; 

int
FUNC1(struct thread *td, struct munmap_args *uap)
{

	return (FUNC0(td, (uintptr_t)uap->addr, uap->len));
}