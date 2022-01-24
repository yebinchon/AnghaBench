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
struct m_tag {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MPC_OBJECT_MBUF ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  PACKET_TAG_MACLABEL ; 
 int /*<<< orphan*/  FUNC1 (struct m_tag*) ; 
 struct m_tag* FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,struct m_tag*) ; 
 int mac_labeled ; 
 int FUNC4 (struct m_tag*,int) ; 

int
FUNC5(struct mbuf *m, int flag)
{
	struct m_tag *tag;
	int error;

	FUNC0(m);

	if (mac_labeled & MPC_OBJECT_MBUF) {
		tag = FUNC2(PACKET_TAG_MACLABEL, sizeof(struct label),
		    flag);
		if (tag == NULL)
			return (ENOMEM);
		error = FUNC4(tag, flag);
		if (error) {
			FUNC1(tag);
			return (error);
		}
		FUNC3(m, tag);
	}
	return (0);
}