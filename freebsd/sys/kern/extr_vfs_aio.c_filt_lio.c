
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct aioliojob* p_lio; } ;
struct knote {TYPE_1__ kn_ptr; } ;
struct aioliojob {int lioj_flags; } ;


 int LIOJ_KEVENT_POSTED ;

__attribute__((used)) static int
filt_lio(struct knote *kn, long hint)
{
 struct aioliojob * lj = kn->kn_ptr.p_lio;

 return (lj->lioj_flags & LIOJ_KEVENT_POSTED);
}
