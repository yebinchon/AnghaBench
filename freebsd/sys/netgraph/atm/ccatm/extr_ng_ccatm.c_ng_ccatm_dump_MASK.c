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
struct mbuf {int dummy; } ;
struct ccnode {int /*<<< orphan*/  dump; int /*<<< orphan*/ * dump_last; struct mbuf* dump_first; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  node_p ;

/* Variables and functions */
 int /*<<< orphan*/  MCLBYTES ; 
 struct ccnode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct mbuf*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ccnode*) ; 
 int /*<<< orphan*/  send_dump ; 

__attribute__((used)) static int
FUNC3(node_p node)
{
	struct ccnode *priv = FUNC0(node);
	struct mbuf *m;
	int error;

	priv->dump_first = priv->dump_last = NULL;
	error = FUNC2(priv->data, MCLBYTES, send_dump, priv);
	if (error != 0)
		return (error);

	if ((m = priv->dump_first) != NULL) {
		priv->dump_first = priv->dump_last = NULL;
		FUNC1(error, priv->dump, m);
		return (error);
	}
	return (0);
}