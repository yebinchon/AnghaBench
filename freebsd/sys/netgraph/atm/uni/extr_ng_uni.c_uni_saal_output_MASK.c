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
struct uni_msg {int dummy; } ;
struct uni {int dummy; } ;
struct sscfu_arg {int sig; } ;
struct priv {int /*<<< orphan*/ * lower; int /*<<< orphan*/  uni; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  node_p ;
typedef  enum saal_sig { ____Placeholder_saal_sig } saal_sig ;
typedef  int /*<<< orphan*/  arg ;

/* Variables and functions */
 struct priv* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  UNI_FAC_SAAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct uni_msg*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uni_msg*) ; 
 struct mbuf* FUNC5 (struct uni_msg*,struct sscfu_arg*,int) ; 

__attribute__((used)) static void
FUNC6(struct uni *uni, void *varg, enum saal_sig sig, struct uni_msg *msg)
{
	node_p node = (node_p)varg;
	struct priv *priv = FUNC0(node);
	struct mbuf *m;
	struct sscfu_arg arg;
	int error;

	if (FUNC3(priv->uni, UNI_FAC_SAAL) > 0)
		FUNC2(node, sig, msg, 1);

	if (priv->lower == NULL) {
		if (msg != NULL)
			FUNC4(msg);
		return;
	}

	arg.sig = sig;

	m = FUNC5(msg, &arg, sizeof(arg));
	if (msg != NULL)
		FUNC4(msg);
	if (m == NULL)
		return;

	FUNC1(error, priv->lower, m);
}