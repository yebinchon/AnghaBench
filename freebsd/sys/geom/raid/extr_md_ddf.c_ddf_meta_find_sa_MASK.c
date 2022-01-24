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
struct ddf_sa_record {int /*<<< orphan*/  Signature; } ;
struct ddf_meta {int dummy; } ;

/* Variables and functions */
 int DDF_SA_SIGNATURE ; 
 int FUNC0 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ddf_meta*) ; 
 struct ddf_sa_record* FUNC2 (struct ddf_meta*,int) ; 

__attribute__((used)) static struct ddf_sa_record *
FUNC3(struct ddf_meta *meta, int create)
{
	struct ddf_sa_record *sa;
	int i, num;

	num = FUNC1(meta);
	for (i = 0; i < num; i++) {
		sa = FUNC2(meta, i);
		if (FUNC0(meta, sa->Signature) == DDF_SA_SIGNATURE)
			return (sa);
	}
	if (create) {
		for (i = 0; i < num; i++) {
			sa = FUNC2(meta, i);
			if (FUNC0(meta, sa->Signature) == 0xffffffff ||
			    FUNC0(meta, sa->Signature) == 0)
				return (sa);
		}
	}
	return (NULL);
}