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
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;
struct ipq {int dummy; } ;

/* Variables and functions */
 struct mac_mls* FUNC0 (struct label*) ; 
 int FUNC1 (struct mac_mls*,struct mac_mls*) ; 

__attribute__((used)) static int
FUNC2(struct mbuf *m, struct label *mlabel, struct ipq *q,
    struct label *qlabel)
{
	struct mac_mls *a, *b;

	a = FUNC0(qlabel);
	b = FUNC0(mlabel);

	return (FUNC1(a, b));
}