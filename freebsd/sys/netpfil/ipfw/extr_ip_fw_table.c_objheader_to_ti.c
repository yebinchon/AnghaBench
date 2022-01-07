
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_info {int dummy; } ;
struct _ipfw_obj_header {int ntlv; } ;


 int ntlv_to_ti (int *,struct tid_info*) ;

__attribute__((used)) static void
objheader_to_ti(struct _ipfw_obj_header *oh, struct tid_info *ti)
{

 ntlv_to_ti(&oh->ntlv, ti);
}
