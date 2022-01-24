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
struct ip6_moptions {int /*<<< orphan*/  im6o_head; } ;
struct in6_multi {struct ifnet* in6m_ifp; } ;
struct in6_mfilter {struct in6_multi* im6f_in6m; } ;
struct ifnet {int /*<<< orphan*/  if_vnet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_IP6MOPTS ; 
 int /*<<< orphan*/  FUNC2 (struct ip6_moptions*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct in6_mfilter*) ; 
 int /*<<< orphan*/  FUNC4 (struct in6_multi*,struct in6_mfilter*) ; 
 struct in6_mfilter* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct in6_mfilter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct in6_mfilter*) ; 

__attribute__((used)) static void
FUNC8(struct ip6_moptions *imo)
{
	struct in6_mfilter *imf;
	struct in6_multi *inm;
	struct ifnet *ifp;

	while ((imf = FUNC5(&imo->im6o_head)) != NULL) {
                FUNC7(&imo->im6o_head, imf);

                FUNC3(imf);
                if ((inm = imf->im6f_in6m) != NULL) {
                        if ((ifp = inm->in6m_ifp) != NULL) {
                                FUNC1(ifp->if_vnet);
                                (void)FUNC4(inm, imf);
                                FUNC0();
                        } else {
                                (void)FUNC4(inm, imf);
                        }
                }
                FUNC6(imf);
        }
        FUNC2(imo, M_IP6MOPTS);
}