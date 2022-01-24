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
struct snddev_info {int flags; int /*<<< orphan*/  bufsz; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  d ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RWTUN ; 
 int CTLTYPE_INT ; 
 int CTLTYPE_UINT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int SD_F_AUTOVCHAN ; 
 int SD_F_EQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct snddev_info*,int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct snddev_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysctl_dev_pcm_bitperfect ; 
 int /*<<< orphan*/  sysctl_dev_pcm_clone_deadline ; 
 int /*<<< orphan*/  sysctl_dev_pcm_clone_flags ; 
 int /*<<< orphan*/  sysctl_dev_pcm_clone_gc ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(device_t dev)
{
  	struct snddev_info *d = FUNC3(dev);

  	/* XXX: an user should be able to set this with a control tool, the
	   sysadmin then needs min+max sysctls for this */
	FUNC1(FUNC4(dev),
	    FUNC2(FUNC5(dev)),
            OID_AUTO, "buffersize", CTLFLAG_RD, &d->bufsz, 0, "allocated buffer size");
	FUNC0(FUNC4(dev),
	    FUNC2(FUNC5(dev)), OID_AUTO,
	    "bitperfect", CTLTYPE_INT | CTLFLAG_RWTUN, d, sizeof(d),
	    sysctl_dev_pcm_bitperfect, "I",
	    "bit-perfect playback/recording (0=disable, 1=enable)");
#ifdef SND_DEBUG
	SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
	    SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
	    "clone_flags", CTLTYPE_UINT | CTLFLAG_RWTUN, d, sizeof(d),
	    sysctl_dev_pcm_clone_flags, "IU",
	    "clone flags");
	SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
	    SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
	    "clone_deadline", CTLTYPE_INT | CTLFLAG_RWTUN, d, sizeof(d),
	    sysctl_dev_pcm_clone_deadline, "I",
	    "clone expiration deadline (ms)");
	SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
	    SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
	    "clone_gc", CTLTYPE_INT | CTLFLAG_RWTUN, d, sizeof(d),
	    sysctl_dev_pcm_clone_gc, "I",
	    "clone garbage collector");
#endif
	if (d->flags & SD_F_AUTOVCHAN)
		FUNC7(dev);
	if (d->flags & SD_F_EQ)
		FUNC6(dev);
}