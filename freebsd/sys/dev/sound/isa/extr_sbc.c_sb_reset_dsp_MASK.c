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
struct resource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  SBDSP_RST ; 
 int FUNC1 (struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct resource *io)
{
    	FUNC2(io, SBDSP_RST, 3);
    	FUNC0(100);
    	FUNC2(io, SBDSP_RST, 0);
    	return (FUNC1(io) == 0xAA)? 0 : ENXIO;
}