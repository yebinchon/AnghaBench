#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mbuf {int dummy; } ;
struct TYPE_3__ {scalar_t__ ifq_len; } ;
struct ipoib_path {TYPE_1__ queue; scalar_t__ query; scalar_t__ ah; int /*<<< orphan*/  valid; } ;
struct ipoib_header {scalar_t__ hwaddr; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 scalar_t__ IPOIB_MAX_PATH_REC_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct mbuf*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,struct ipoib_path*) ; 
 struct ipoib_path* FUNC4 (struct ipoib_dev_priv*,scalar_t__) ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct ipoib_path*) ; 
 int /*<<< orphan*/  FUNC7 (struct ipoib_dev_priv*,struct mbuf*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct ipoib_path*) ; 
 int /*<<< orphan*/  FUNC9 (struct ipoib_dev_priv*,struct ipoib_path*) ; 
 int /*<<< orphan*/  FUNC10 (struct ipoib_dev_priv*,struct mbuf*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mbuf*) ; 
 struct ipoib_path* FUNC12 (struct ipoib_dev_priv*,scalar_t__) ; 
 scalar_t__ FUNC13 (struct ipoib_dev_priv*,struct ipoib_path*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(struct mbuf *mb, struct ipoib_dev_priv *priv, struct ipoib_header *eh)
{
	struct ipoib_path *path;

	path = FUNC4(priv, eh->hwaddr + 4);
	if (!path || !path->valid) {
		int new_path = 0;

		if (!path) {
			path = FUNC12(priv, eh->hwaddr);
			new_path = 1;
		}
		if (path) {
			if (FUNC2(&path->queue) < IPOIB_MAX_PATH_REC_QUEUE)
				FUNC1(&path->queue, mb);
			else {
				FUNC5(priv->dev, IFCOUNTER_OERRORS, 1);
				FUNC11(mb);
			}

			if (!path->query && FUNC13(priv, path)) {
				FUNC14(&priv->lock, flags);
				if (new_path)
					FUNC9(priv, path);
				return;
			} else
				FUNC3(priv, path);
		} else {
			FUNC5(priv->dev, IFCOUNTER_OERRORS, 1);
			FUNC11(mb);
		}

		return;
	}

	if (FUNC6(path) && FUNC8(path)) {
		FUNC7(priv, mb, FUNC6(path));
	} else if (path->ah) {
		FUNC10(priv, mb, path->ah, FUNC0(eh->hwaddr));
	} else if ((path->query || !FUNC13(priv, path)) &&
		    path->queue.ifq_len < IPOIB_MAX_PATH_REC_QUEUE) {
		FUNC1(&path->queue, mb);
	} else {
		FUNC5(priv->dev, IFCOUNTER_OERRORS, 1);
		FUNC11(mb);
	}
}