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
struct sbuf {int dummy; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_BIBA_LABEL_NAME ; 
 struct mac_biba* SLOT (struct label*) ; 
 int biba_to_string (struct sbuf*,struct mac_biba*) ; 
 scalar_t__ strcmp (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
biba_externalize_label(struct label *label, char *element_name,
    struct sbuf *sb, int *claimed)
{
	struct mac_biba *mb;

	if (strcmp(MAC_BIBA_LABEL_NAME, element_name) != 0)
		return (0);

	(*claimed)++;

	mb = SLOT(label);
	return (biba_to_string(sb, mb));
}