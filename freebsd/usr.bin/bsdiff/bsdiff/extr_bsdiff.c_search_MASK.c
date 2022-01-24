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
typedef  int /*<<< orphan*/  u_char ;
typedef  size_t off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static off_t FUNC3(off_t *I,u_char *old,off_t oldsize,
		u_char *new,off_t newsize,off_t st,off_t en,off_t *pos)
{
	off_t x,y;

	if(en-st<2) {
		x=FUNC1(old+I[st],oldsize-I[st],new,newsize);
		y=FUNC1(old+I[en],oldsize-I[en],new,newsize);

		if(x>y) {
			*pos=I[st];
			return x;
		} else {
			*pos=I[en];
			return y;
		}
	}

	x=st+(en-st)/2;
	if(FUNC2(old+I[x],new,FUNC0(oldsize-I[x],newsize))<0) {
		return FUNC3(I,old,oldsize,new,newsize,x,en,pos);
	} else {
		return FUNC3(I,old,oldsize,new,newsize,st,x,pos);
	};
}