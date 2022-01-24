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
struct iavf_sc {int /*<<< orphan*/  mac_filters; } ;
struct iavf_mac_filter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_IAVF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct iavf_mac_filter*,int /*<<< orphan*/ ) ; 
 struct iavf_mac_filter* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static struct iavf_mac_filter *
FUNC2(struct iavf_sc *sc)
{
	struct iavf_mac_filter	*f;

	f = FUNC1(sizeof(struct iavf_mac_filter),
	    M_IAVF, M_NOWAIT | M_ZERO);
	if (f)
		FUNC0(sc->mac_filters, f, next);

	return (f);
}