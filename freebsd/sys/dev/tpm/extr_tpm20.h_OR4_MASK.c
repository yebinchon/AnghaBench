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
typedef  int uint32_t ;
struct tpm_sc {int dummy; } ;
typedef  int /*<<< orphan*/  bus_size_t ;

/* Variables and functions */
 int FUNC0 (struct tpm_sc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_sc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC2(struct tpm_sc *sc, bus_size_t off, uint32_t val)
{

	FUNC1(sc, off, FUNC0(sc, off) | val);
}