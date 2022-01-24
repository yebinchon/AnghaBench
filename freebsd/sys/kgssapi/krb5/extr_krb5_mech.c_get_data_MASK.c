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
typedef  int /*<<< orphan*/  uint8_t ;
struct krb5_data {size_t kd_length; int /*<<< orphan*/  kd_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_GSSAPI ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/  const**,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(const uint8_t **pp, size_t *lenp, struct krb5_data *dp)
{
	size_t sz = FUNC1(pp, lenp);

	dp->kd_length = sz;
	dp->kd_data = FUNC2(sz, M_GSSAPI, M_WAITOK);

	if (*lenp < sz)
		sz = *lenp;
	FUNC0(*pp, dp->kd_data, sz);
	(*pp) += sz;
	(*lenp) -= sz;
}