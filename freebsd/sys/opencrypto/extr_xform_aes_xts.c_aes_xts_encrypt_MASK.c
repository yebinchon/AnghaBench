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
typedef  int /*<<< orphan*/  u_int8_t ;
struct aes_xts_ctx {int dummy; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aes_xts_ctx*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC1(caddr_t key, u_int8_t *data)
{
	FUNC0((struct aes_xts_ctx *)key, data, 1);
}