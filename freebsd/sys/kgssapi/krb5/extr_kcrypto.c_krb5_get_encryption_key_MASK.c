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
struct krb5_key_state {int dummy; } ;

/* Variables and functions */
 struct krb5_key_state* FUNC0 (struct krb5_key_state*,int,int) ; 

struct krb5_key_state *
FUNC1(struct krb5_key_state *basekey, int usage)
{

	return (FUNC0(basekey, usage, 0xaa));
}