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
typedef  size_t uint ;
struct bridge_if {int dummy; } ;

/* Variables and functions */
 size_t IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,size_t) ; 
 struct bridge_if* bif_default ; 
 char* bif_default_name ; 
 struct bridge_if* FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(const char *bif_name, uint len)
{
	struct bridge_if *bif;

	if (len >= IFNAMSIZ)
		return (-1);

	FUNC0(bif_name, bif_default_name, len);
	bif_default_name[len] = '\0';

	if ((bif = FUNC1(bif_default_name)) == NULL) {
		bif_default = NULL;
		return (0);
	}

	bif_default = bif;
	return (1);
}