
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mevent {int me_state; } ;



__attribute__((used)) static int
mevent_kq_flags(struct mevent *mevp)
{
 return (mevp->me_state);
}
