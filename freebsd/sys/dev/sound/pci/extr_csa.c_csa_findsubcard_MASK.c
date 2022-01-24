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
struct csa_card {scalar_t__ subvendor; scalar_t__ subdevice; } ;
struct card_type {struct csa_card* cards; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct card_type* FUNC0 (int /*<<< orphan*/ ) ; 
 struct csa_card nocard ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

struct csa_card *
FUNC3(device_t dev)
{
	int i;
	struct card_type *card;
	struct csa_card *subcard;

	card = FUNC0(dev);
	if (card == NULL)
		return &nocard;
	subcard = card->cards;
	i = 0;
	while (subcard[i].subvendor != 0) {
		if (FUNC2(dev) == subcard[i].subvendor
		    && FUNC1(dev) == subcard[i].subdevice) {
			return &subcard[i];
		}
		i++;
	}
	return &subcard[i];
}