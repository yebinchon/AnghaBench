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
typedef  int uint64_t ;
struct nvme_namespace {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nvme_namespace*) ; 
 int FUNC1 (struct nvme_namespace*) ; 

uint64_t
FUNC2(struct nvme_namespace *ns)
{
	return (FUNC0(ns) * FUNC1(ns));
}