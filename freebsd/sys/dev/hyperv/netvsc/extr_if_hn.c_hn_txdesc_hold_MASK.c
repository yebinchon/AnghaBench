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
struct hn_txdesc {scalar_t__ refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 

__attribute__((used)) static __inline void
FUNC2(struct hn_txdesc *txd)
{

	/* 0->1 transition will never work */
	FUNC0(txd->refs > 0, ("invalid txd refs %d", txd->refs));
	FUNC1(&txd->refs, 1);
}