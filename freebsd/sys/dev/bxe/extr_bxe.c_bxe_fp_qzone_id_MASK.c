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
typedef  scalar_t__ uint8_t ;
struct bxe_fastpath {scalar_t__ cl_id; int /*<<< orphan*/  sc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ETH_MAX_RX_CLIENTS_E1H ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline uint8_t
FUNC2(struct bxe_fastpath *fp)
{
    if (FUNC0(fp->sc)) {
        return (fp->cl_id + FUNC1(fp->sc) * ETH_MAX_RX_CLIENTS_E1H);
    } else {
        return (fp->cl_id);
    }
}