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
struct label {int dummy; } ;
struct ifnet {int dummy; } ;
struct bpf_d {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct label*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_BPF ; 
 int /*<<< orphan*/  MAGIC_IFNET ; 
 int /*<<< orphan*/  bpfdesc_check_receive ; 

__attribute__((used)) static int
FUNC2(struct bpf_d *d, struct label *dlabel,
    struct ifnet *ifp, struct label *ifplabel)
{

	FUNC1(dlabel, MAGIC_BPF);
	FUNC1(ifplabel, MAGIC_IFNET);
	FUNC0(bpfdesc_check_receive);

	return (0);
}