#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ifnet {struct an_softc* if_softc; } ;
struct TYPE_2__ {int an_len; int an_type; int an_val; } ;
struct an_softc {TYPE_1__ areq; } ;
struct an_ltv_gen {int dummy; } ;
struct aironet_ioctl {int command; int len; scalar_t__ data; } ;

/* Variables and functions */
#define  AIROPAPLIST 138 
#define  AIROPCAP 137 
#define  AIROPCFG 136 
#define  AIROPLEAPPWD 135 
#define  AIROPLEAPUSR 134 
#define  AIROPMACOFF 133 
#define  AIROPMACON 132 
#define  AIROPSIDS 131 
#define  AIROPSTCLR 130 
#define  AIROPWEPKEY 129 
#define  AIROPWEPKEYNV 128 
 int /*<<< orphan*/  AN_CMD_DISABLE ; 
 int /*<<< orphan*/  AN_CMD_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct an_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct an_softc*) ; 
 int AN_MAX_DATALEN ; 
 int AN_RID_32BITS_DELTACLR ; 
 int AN_RID_APLIST ; 
 int AN_RID_CAPABILITIES ; 
 int AN_RID_GENCONFIG ; 
 int AN_RID_LEAPPASSWORD ; 
 int AN_RID_LEAPUSERNAME ; 
 int AN_RID_SSIDLIST ; 
 int AN_RID_WEP_PERM ; 
 int AN_RID_WEP_TEMP ; 
 int /*<<< orphan*/  FUNC2 (struct an_softc*) ; 
 int EFAULT ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC3 (struct an_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct an_softc*,struct an_ltv_gen*) ; 
 int /*<<< orphan*/  FUNC5 (struct an_softc*,struct an_ltv_gen*) ; 
 int FUNC6 (scalar_t__,int*,int) ; 
 int FUNC7 (int*,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC8(struct ifnet *ifp, struct aironet_ioctl *l_ioctl)
{
	struct an_softc *sc;
	int		rid, command, error;

	sc = ifp->if_softc;
	FUNC1(sc);
	rid = 0;
	command = l_ioctl->command;

	switch (command) {
	case AIROPSIDS:
		rid = AN_RID_SSIDLIST;
		break;
	case AIROPCAP:
		rid = AN_RID_CAPABILITIES;
		break;
	case AIROPAPLIST:
		rid = AN_RID_APLIST;
		break;
	case AIROPCFG:
		rid = AN_RID_GENCONFIG;
		break;
	case AIROPMACON:
		FUNC3(sc, AN_CMD_ENABLE, 0);
		return 0;
		break;
	case AIROPMACOFF:
		FUNC3(sc, AN_CMD_DISABLE, 0);
		return 0;
		break;
	case AIROPSTCLR:
		/*
		 * This command merely clears the counts does not actually
		 * store any data only reads rid. But as it changes the cards
		 * state, I put it in the writerid routines.
		 */

		rid = AN_RID_32BITS_DELTACLR;
		sc = ifp->if_softc;
		sc->areq.an_len = AN_MAX_DATALEN;
		sc->areq.an_type = rid;

		FUNC4(sc, (struct an_ltv_gen *)&sc->areq);
		l_ioctl->len = sc->areq.an_len - 4;	/* just data */

		FUNC2(sc);
		/* the data contains the length at first */
		error = FUNC7(&(sc->areq.an_len), l_ioctl->data,
			    sizeof(sc->areq.an_len));
		if (error) {
			FUNC0(sc);
			return -EFAULT;
		}
		/* Just copy the data */
		error = FUNC7(&(sc->areq.an_val), l_ioctl->data + 2,
			    l_ioctl->len);
		FUNC0(sc);
		if (error)
			return -EFAULT;
		return 0;
		break;
	case AIROPWEPKEY:
		rid = AN_RID_WEP_TEMP;
		break;
	case AIROPWEPKEYNV:
		rid = AN_RID_WEP_PERM;
		break;
	case AIROPLEAPUSR:
		rid = AN_RID_LEAPUSERNAME;
		break;
	case AIROPLEAPPWD:
		rid = AN_RID_LEAPPASSWORD;
		break;
	default:
		return -EOPNOTSUPP;
	}

	if (rid) {
		if (l_ioctl->len > sizeof(sc->areq.an_val) + 4)
			return -EINVAL;
		sc->areq.an_len = l_ioctl->len + 4;	/* add type & length */
		sc->areq.an_type = rid;

		/* Just copy the data back */
		FUNC2(sc);
		error = FUNC6((l_ioctl->data) + 2, &sc->areq.an_val,
		       l_ioctl->len);
		FUNC0(sc);
		if (error)
			return -EFAULT;

		FUNC3(sc, AN_CMD_DISABLE, 0);
		FUNC5(sc, (struct an_ltv_gen *)&sc->areq);
		FUNC3(sc, AN_CMD_ENABLE, 0);
		return 0;
	}
	return -EOPNOTSUPP;
}