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
struct dn_sch {int dummy; } ;
struct dn_profile {int dummy; } ;
struct dn_pipe8 {scalar_t__ samples_no; } ;
struct dn_pipe7 {int pipe_nr; } ;
struct dn_link {int dummy; } ;
struct dn_id {int /*<<< orphan*/  id; } ;
struct dn_fs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DN_API_VERSION ; 
 int /*<<< orphan*/  DN_CMD_CONFIG ; 
 int /*<<< orphan*/  DN_FS ; 
 int /*<<< orphan*/  DN_LINK ; 
 int /*<<< orphan*/  DN_PROFILE ; 
 int /*<<< orphan*/  DN_SCH ; 
 int /*<<< orphan*/  M_DUMMYNET ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC0 (struct dn_sch*,struct dn_link*,struct dn_fs*,void*) ; 
 int FUNC1 (struct dn_profile*,struct dn_link*,void*) ; 
 int FUNC2 (struct dn_fs*,void*) ; 
 int FUNC3 (struct dn_id*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dn_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  is7 ; 
 struct dn_id* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (struct dn_id**,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(void *v)
{
	struct dn_id *buf = NULL, *base;
	struct dn_sch *sch = NULL;
	struct dn_link *p = NULL;
	struct dn_fs *fs = NULL;
	struct dn_profile *pf = NULL;
	int lmax;
	int error;

	struct dn_pipe7 *p7 = (struct dn_pipe7 *)v;
	struct dn_pipe8 *p8 = (struct dn_pipe8 *)v;

	int i; /* number of object to configure */

	lmax = sizeof(struct dn_id);	/* command header */
	lmax += sizeof(struct dn_sch) + sizeof(struct dn_link) +
		sizeof(struct dn_fs) + sizeof(struct dn_profile);

	base = buf = FUNC5(lmax, M_DUMMYNET, M_WAITOK|M_ZERO);
	FUNC6(&buf, sizeof(struct dn_id), DN_CMD_CONFIG);
	base->id = DN_API_VERSION;

	/* pipe_nr is the same in p7 and p8 */
	i = p7->pipe_nr;
	if (i != 0) { /* pipe config */
		sch = FUNC6(&buf, sizeof(*sch), DN_SCH);
		p = FUNC6(&buf, sizeof(*p), DN_LINK);
		fs = FUNC6(&buf, sizeof(*fs), DN_FS);

		error = FUNC0(sch, p, fs, v);
		if (error) {
			FUNC4(buf, M_DUMMYNET);
			return error;
		}
		if (!is7 && p8->samples_no > 0) {
			/* Add profiles*/
			pf = FUNC6(&buf, sizeof(*pf), DN_PROFILE);
			error = FUNC1(pf, p, v);
			if (error) {
				FUNC4(buf, M_DUMMYNET);
				return error;
			}
		}
	} else { /* queue config */
		fs = FUNC6(&buf, sizeof(*fs), DN_FS);
		error = FUNC2(fs, v);
		if (error) {
			FUNC4(buf, M_DUMMYNET);
			return error;
		}
	}
	error = FUNC3(base, (char *)buf - (char *)base);

	if (buf)
		FUNC4(buf, M_DUMMYNET);
	return error;
}