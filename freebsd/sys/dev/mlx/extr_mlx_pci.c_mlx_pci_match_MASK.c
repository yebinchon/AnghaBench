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
struct mlx_ident {scalar_t__ vendor; scalar_t__ device; scalar_t__ subvendor; scalar_t__ subdevice; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct mlx_ident* mlx_identifiers ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlx_ident *
FUNC4(device_t dev)
{
    struct mlx_ident *m;

    for (m = mlx_identifiers; m->vendor != 0; m++) {
	if ((m->vendor == FUNC3(dev)) &&
	    (m->device == FUNC0(dev)) &&
	    ((m->subvendor == 0) || ((m->subvendor == FUNC2(dev)) &&
				     (m->subdevice == FUNC1(dev)))))
	    return (m);
    }
    return (NULL);
}