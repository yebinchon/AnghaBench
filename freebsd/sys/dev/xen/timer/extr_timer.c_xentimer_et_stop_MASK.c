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
struct xentimer_pcpu_data {scalar_t__ timer; } ;
struct eventtimer {int dummy; } ;

/* Variables and functions */
 struct xentimer_pcpu_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vcpu_id ; 
 int /*<<< orphan*/  xentimer_pcpu ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct eventtimer *et)
{
	int cpu = FUNC1(vcpu_id);
	struct xentimer_pcpu_data *pcpu = FUNC0(xentimer_pcpu);

	pcpu->timer = 0;
	return (FUNC2(cpu));
}