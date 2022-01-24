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
struct cxgb_ident {scalar_t__ vendor; scalar_t__ device; int /*<<< orphan*/ * desc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct cxgb_ident* cxgb_identifiers ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cxgb_ident *
FUNC2(device_t dev)
{
	struct cxgb_ident *id;

	for (id = cxgb_identifiers; id->desc != NULL; id++) {
		if ((id->vendor == FUNC1(dev)) &&
		    (id->device == FUNC0(dev))) {
			return (id);
		}
	}
	return (NULL);
}