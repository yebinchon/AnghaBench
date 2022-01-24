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
struct hmac_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hmac_ctx*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct hmac_ctx*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct hmac_ctx*,int /*<<< orphan*/  const*,size_t) ; 

void
FUNC3(const char *hkey, size_t hkeysize, const uint8_t *data,
    size_t datasize, uint8_t *md, size_t mdsize)
{
	struct hmac_ctx ctx;

	FUNC1(&ctx, hkey, hkeysize);
	FUNC2(&ctx, data, datasize);
	FUNC0(&ctx, md, mdsize);
}