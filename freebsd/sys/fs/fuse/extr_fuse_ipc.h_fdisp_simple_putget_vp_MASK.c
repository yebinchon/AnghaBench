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
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct fuse_dispatcher {int dummy; } ;
typedef  enum fuse_opcode { ____Placeholder_fuse_opcode } fuse_opcode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fuse_dispatcher*,int,struct vnode*,struct thread*,struct ucred*) ; 
 int FUNC1 (struct fuse_dispatcher*) ; 

__attribute__((used)) static inline int
FUNC2(struct fuse_dispatcher *fdip, enum fuse_opcode op,
    struct vnode *vp, struct thread *td, struct ucred *cred)
{
	FUNC0(fdip, op, vp, td, cred);
	return (FUNC1(fdip));
}