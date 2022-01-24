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

/* Variables and functions */
 int ATA_PIO0 ; 
 int ATA_PIO1 ; 
 int ATA_PIO2 ; 
 int ATA_PIO3 ; 
 int ATA_PIO4 ; 
 int ATA_UDMA0 ; 
 int ATA_UDMA1 ; 
 int ATA_UDMA2 ; 
 int ATA_UDMA3 ; 
 int ATA_UDMA4 ; 
 int ATA_UDMA5 ; 
 int ATA_UDMA6 ; 
 int ATA_WDMA0 ; 
 int ATA_WDMA1 ; 
 int ATA_WDMA2 ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

__attribute__((used)) static int
FUNC1(const char *str)
{

	if (!FUNC0(str, "PIO0")) return (ATA_PIO0);
	if (!FUNC0(str, "PIO1")) return (ATA_PIO1);
	if (!FUNC0(str, "PIO2")) return (ATA_PIO2);
	if (!FUNC0(str, "PIO3")) return (ATA_PIO3);
	if (!FUNC0(str, "PIO4")) return (ATA_PIO4);
	if (!FUNC0(str, "WDMA0")) return (ATA_WDMA0);
	if (!FUNC0(str, "WDMA1")) return (ATA_WDMA1);
	if (!FUNC0(str, "WDMA2")) return (ATA_WDMA2);
	if (!FUNC0(str, "UDMA0")) return (ATA_UDMA0);
	if (!FUNC0(str, "UDMA16")) return (ATA_UDMA0);
	if (!FUNC0(str, "UDMA1")) return (ATA_UDMA1);
	if (!FUNC0(str, "UDMA25")) return (ATA_UDMA1);
	if (!FUNC0(str, "UDMA2")) return (ATA_UDMA2);
	if (!FUNC0(str, "UDMA33")) return (ATA_UDMA2);
	if (!FUNC0(str, "UDMA3")) return (ATA_UDMA3);
	if (!FUNC0(str, "UDMA44")) return (ATA_UDMA3);
	if (!FUNC0(str, "UDMA4")) return (ATA_UDMA4);
	if (!FUNC0(str, "UDMA66")) return (ATA_UDMA4);
	if (!FUNC0(str, "UDMA5")) return (ATA_UDMA5);
	if (!FUNC0(str, "UDMA100")) return (ATA_UDMA5);
	if (!FUNC0(str, "UDMA6")) return (ATA_UDMA6);
	if (!FUNC0(str, "UDMA133")) return (ATA_UDMA6);
	return (-1);
}