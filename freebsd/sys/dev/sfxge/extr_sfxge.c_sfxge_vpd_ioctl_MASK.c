#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sfxge_softc {int /*<<< orphan*/  vpd_size; int /*<<< orphan*/  vpd_data; int /*<<< orphan*/  enp; } ;
struct TYPE_8__ {int op; int len; int /*<<< orphan*/  payload; int /*<<< orphan*/  keyword; int /*<<< orphan*/  tag; } ;
struct TYPE_9__ {TYPE_1__ vpd; } ;
struct TYPE_10__ {TYPE_2__ u; } ;
typedef  TYPE_3__ sfxge_ioc_t ;
struct TYPE_11__ {int evv_length; int /*<<< orphan*/  evv_value; int /*<<< orphan*/  evv_keyword; int /*<<< orphan*/  evv_tag; } ;
typedef  TYPE_4__ efx_vpd_value_t ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int FUNC0 (int,int) ; 
#define  SFXGE_VPD_OP_GET_KEYWORD 129 
#define  SFXGE_VPD_OP_SET_KEYWORD 128 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct sfxge_softc *sc, sfxge_ioc_t *ioc)
{
	efx_vpd_value_t value;
	int rc = 0;

	switch (ioc->u.vpd.op) {
	case SFXGE_VPD_OP_GET_KEYWORD:
		value.evv_tag = ioc->u.vpd.tag;
		value.evv_keyword = ioc->u.vpd.keyword;
		rc = FUNC3(sc->enp, sc->vpd_data, sc->vpd_size, &value);
		if (rc != 0)
			break;
		ioc->u.vpd.len = FUNC0(ioc->u.vpd.len, value.evv_length);
		if (ioc->u.vpd.payload != 0) {
			rc = FUNC2(value.evv_value, ioc->u.vpd.payload,
				     ioc->u.vpd.len);
		}
		break;
	case SFXGE_VPD_OP_SET_KEYWORD:
		if (ioc->u.vpd.len > sizeof(value.evv_value))
			return (EINVAL);
		value.evv_tag = ioc->u.vpd.tag;
		value.evv_keyword = ioc->u.vpd.keyword;
		value.evv_length = ioc->u.vpd.len;
		rc = FUNC1(ioc->u.vpd.payload, value.evv_value, value.evv_length);
		if (rc != 0)
			break;
		rc = FUNC4(sc->enp, sc->vpd_data, sc->vpd_size, &value);
		if (rc != 0)
			break;
		rc = FUNC5(sc->enp, sc->vpd_data, sc->vpd_size);
		if (rc != 0)
			break;
		rc = FUNC6(sc->enp, sc->vpd_data, sc->vpd_size);
		break;
	default:
		rc = EOPNOTSUPP;
		break;
	}

	return (rc);
}