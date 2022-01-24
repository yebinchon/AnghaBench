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
struct ip_moptions {int /*<<< orphan*/  imo_head; } ;
struct in_multi {struct ifnet* inm_ifp; } ;
struct in_mfilter {struct in_multi* imf_inm; } ;
struct ifnet {int /*<<< orphan*/  if_vnet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_IPMOPTS ; 
 int /*<<< orphan*/  FUNC2 (struct ip_moptions*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct in_mfilter*) ; 
 int /*<<< orphan*/  FUNC4 (struct in_multi*,struct in_mfilter*) ; 
 struct in_mfilter* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct in_mfilter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct in_mfilter*) ; 

__attribute__((used)) static void
FUNC8(struct ip_moptions *imo)
{
	struct in_mfilter *imf;
	struct in_multi *inm;
	struct ifnet *ifp;

	while ((imf = FUNC5(&imo->imo_head)) != NULL) {
		FUNC7(&imo->imo_head, imf);

		FUNC3(imf);
		if ((inm = imf->imf_inm) != NULL) {
			if ((ifp = inm->inm_ifp) != NULL) {
				FUNC1(ifp->if_vnet);
				(void)FUNC4(inm, imf);
				FUNC0();
			} else {
				(void)FUNC4(inm, imf);
			}
		}
		FUNC6(imf);
	}
	FUNC2(imo, M_IPMOPTS);
}