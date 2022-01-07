
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
struct g_part_parms {int dummy; } ;


 int ENOSYS ;
 int gctl_error (struct gctl_req*,char*,int) ;

__attribute__((used)) static int
g_part_ctl_move(struct gctl_req *req, struct g_part_parms *gpp)
{
 gctl_error(req, "%d verb 'move'", ENOSYS);
 return (ENOSYS);
}
