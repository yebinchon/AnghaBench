
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xferstat {int rcvd; } ;
typedef int off_t ;


 int stat_display (struct xferstat*,int ) ;
 scalar_t__ v_progress ;

__attribute__((used)) static void
stat_update(struct xferstat *xs, off_t rcvd)
{

 xs->rcvd = rcvd;
 if (v_progress)
  stat_display(xs, 0);
}
