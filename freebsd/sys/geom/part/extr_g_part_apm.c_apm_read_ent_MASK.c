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
struct g_provider {int sectorsize; } ;
struct g_consumer {struct g_provider* provider; } ;
struct apm_ent {int /*<<< orphan*/  ent_type; int /*<<< orphan*/  ent_name; void* ent_size; void* ent_start; void* ent_pmblkcnt; int /*<<< orphan*/  ent_sig; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (struct g_consumer*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static int
FUNC6(struct g_consumer *cp, uint32_t blk, struct apm_ent *ent,
    int tivo_series1)
{
	struct g_provider *pp;
	char *buf;
	int error;

	pp = cp->provider;
	buf = FUNC4(cp, pp->sectorsize * blk, pp->sectorsize, &error);
	if (buf == NULL)
		return (error);
	if (tivo_series1)
		FUNC5(buf, pp->sectorsize);
	ent->ent_sig = FUNC1(buf);
	ent->ent_pmblkcnt = FUNC2(buf + 4);
	ent->ent_start = FUNC2(buf + 8);
	ent->ent_size = FUNC2(buf + 12);
	FUNC0(buf + 16, ent->ent_name, sizeof(ent->ent_name));
	FUNC0(buf + 48, ent->ent_type, sizeof(ent->ent_type));
	FUNC3(buf);
	return (0);
}