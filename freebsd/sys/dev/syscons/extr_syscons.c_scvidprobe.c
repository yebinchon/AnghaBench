
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIO_PROBE_ONLY ;
 int vid_configure (int ) ;
 scalar_t__ vid_find_adapter (char*,int) ;

__attribute__((used)) static int
scvidprobe(int unit, int flags, int cons)
{







    vid_configure(cons ? VIO_PROBE_ONLY : 0);

    return (vid_find_adapter("*", unit) >= 0);
}
