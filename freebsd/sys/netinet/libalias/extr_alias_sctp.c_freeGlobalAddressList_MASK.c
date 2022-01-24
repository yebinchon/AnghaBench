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
struct sctp_nat_assoc {int /*<<< orphan*/  Gaddr; } ;
struct sctp_GlobalAddress {int dummy; } ;

/* Variables and functions */
 struct sctp_GlobalAddress* FUNC0 (int /*<<< orphan*/ *) ; 
 struct sctp_GlobalAddress* FUNC1 (struct sctp_GlobalAddress*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list_Gaddr ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_GlobalAddress*) ; 

__attribute__((used)) static void FUNC3(struct sctp_nat_assoc *assoc)
{
	struct sctp_GlobalAddress *gaddr1=NULL,*gaddr2=NULL;
	/*free global address list*/
	gaddr1 = FUNC0(&(assoc->Gaddr));
	while (gaddr1 != NULL) {
		gaddr2 = FUNC1(gaddr1, list_Gaddr);
		FUNC2(gaddr1);
		gaddr1 = gaddr2;
	}
}