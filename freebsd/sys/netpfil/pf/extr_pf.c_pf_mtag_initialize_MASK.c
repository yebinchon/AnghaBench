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
struct pf_mtag {int dummy; } ;
struct m_tag {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 int /*<<< orphan*/  pf_mtag_uminit ; 
 int /*<<< orphan*/  pf_mtag_z ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC1()
{

	pf_mtag_z = FUNC0("pf mtags", sizeof(struct m_tag) +
	    sizeof(struct pf_mtag), NULL, NULL, pf_mtag_uminit, NULL,
	    UMA_ALIGN_PTR, 0);
}