
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ciss_request {int cr_tag; struct ciss_command* cr_cc; } ;
struct TYPE_2__ {int host_tag; } ;
struct ciss_command {TYPE_1__ header; } ;


 int ciss_map_request (struct ciss_request*) ;
 int ciss_print_request (struct ciss_request*) ;
 int debug (int,char*,int ,int ) ;

__attribute__((used)) static int
ciss_start(struct ciss_request *cr)
{
    struct ciss_command *cc;
    int error;

    cc = cr->cr_cc;
    debug(2, "post command %d tag %d ", cr->cr_tag, cc->header.host_tag);




    if ((error = ciss_map_request(cr)))
 return(error);





    return(0);
}
