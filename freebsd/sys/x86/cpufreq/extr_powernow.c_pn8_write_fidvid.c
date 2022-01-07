
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int ;


 int ENXIO ;
 int WRITE_FIDVID (int ,int ,int ) ;
 scalar_t__ pn8_read_pending_wait (int *) ;

__attribute__((used)) static int
pn8_write_fidvid(u_int fid, u_int vid, uint64_t ctrl, uint64_t *status)
{
 int i = 100;

 do
  WRITE_FIDVID(fid, vid, ctrl);
 while (pn8_read_pending_wait(status) && --i);

 return (i == 0 ? ENXIO : 0);
}
