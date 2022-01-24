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
struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct bpf_d {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct label*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_BPF ; 
 int /*<<< orphan*/  MAGIC_MBUF ; 
 int /*<<< orphan*/  bpfdesc_create_mbuf ; 

__attribute__((used)) static void
FUNC2(struct bpf_d *d, struct label *dlabel,
    struct mbuf *m, struct label *mlabel)
{

	FUNC1(dlabel, MAGIC_BPF);
	FUNC1(mlabel, MAGIC_MBUF);
	FUNC0(bpfdesc_create_mbuf);
}