
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct ciss_request {int cr_tag; scalar_t__ cr_ccphys; struct ciss_command* cr_cc; } ;
struct TYPE_4__ {scalar_t__ error_info_length; scalar_t__ error_info_address; } ;
struct TYPE_3__ {int host_tag; scalar_t__ host_tag_zeroes; scalar_t__ sg_total; scalar_t__ sg_in_list; } ;
struct ciss_command {TYPE_2__ error_info; int * sg; TYPE_1__ header; } ;


 scalar_t__ CISS_COMMAND_ALLOC_SIZE ;
 int bzero (int *,scalar_t__) ;

__attribute__((used)) static void
ciss_preen_command(struct ciss_request *cr)
{
    struct ciss_command *cc;
    u_int32_t cmdphys;







    cc = cr->cr_cc;
    cc->header.sg_in_list = 0;
    cc->header.sg_total = 0;
    cc->header.host_tag = cr->cr_tag << 2;
    cc->header.host_tag_zeroes = 0;
    bzero(&(cc->sg[0]), CISS_COMMAND_ALLOC_SIZE - sizeof(struct ciss_command));
    cmdphys = cr->cr_ccphys;
    cc->error_info.error_info_address = cmdphys + sizeof(struct ciss_command);
    cc->error_info.error_info_length = CISS_COMMAND_ALLOC_SIZE - sizeof(struct ciss_command);
}
