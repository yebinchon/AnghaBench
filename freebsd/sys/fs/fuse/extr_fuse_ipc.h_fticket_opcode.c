
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fuse_ticket {int dummy; } ;
typedef enum fuse_opcode { ____Placeholder_fuse_opcode } fuse_opcode ;
struct TYPE_2__ {int opcode; } ;


 TYPE_1__* fticket_in_header (struct fuse_ticket*) ;

__attribute__((used)) static inline enum fuse_opcode
fticket_opcode(struct fuse_ticket *ftick)
{
 return fticket_in_header(ftick)->opcode;
}
