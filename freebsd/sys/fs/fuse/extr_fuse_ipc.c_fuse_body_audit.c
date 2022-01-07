
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fuse_write_out {int dummy; } ;
struct TYPE_2__ {scalar_t__ base; } ;
struct fuse_ticket {int tk_data; TYPE_1__ tk_ms_fiov; } ;
struct fuse_statfs_out {int dummy; } ;
struct fuse_read_in {size_t size; } ;
struct fuse_open_out {int dummy; } ;
struct fuse_lk_out {int dummy; } ;
struct fuse_init_out {int dummy; } ;
struct fuse_in_header {int dummy; } ;
struct fuse_entry_out {int dummy; } ;
struct fuse_bmap_out {int dummy; } ;
struct fuse_attr_out {int dummy; } ;
typedef enum fuse_opcode { ____Placeholder_fuse_opcode } fuse_opcode ;


 int EINVAL ;


 size_t FUSE_COMPAT_22_INIT_OUT_SIZE ;
 size_t FUSE_COMPAT_ATTR_OUT_SIZE ;
 size_t FUSE_COMPAT_ENTRY_OUT_SIZE ;
 size_t FUSE_COMPAT_INIT_OUT_SIZE ;
 size_t FUSE_COMPAT_STATFS_SIZE ;
 size_t PAGE_SIZE ;
 int fticket_opcode (struct fuse_ticket*) ;
 int fuse_libabi_geq (int ,int,int) ;
 int panic (char*,...) ;

__attribute__((used)) static int
fuse_body_audit(struct fuse_ticket *ftick, size_t blen)
{
 int err = 0;
 enum fuse_opcode opcode;

 opcode = fticket_opcode(ftick);

 switch (opcode) {
 case 161:
  err = (blen == sizeof(struct fuse_bmap_out)) ? 0 : EINVAL;
  break;

 case 150:
 case 148:
 case 147:
 case 146:
 case 130:
  if (fuse_libabi_geq(ftick->tk_data, 7, 9)) {
   err = (blen == sizeof(struct fuse_entry_out)) ?
    0 : EINVAL;
  } else {
   err = (blen == FUSE_COMPAT_ENTRY_OUT_SIZE) ? 0 : EINVAL;
  }
  break;

 case 157:
  panic("FUSE: a handler has been intalled for FUSE_FORGET");
  break;

 case 154:
 case 135:
  if (fuse_libabi_geq(ftick->tk_data, 7, 9)) {
   err = (blen == sizeof(struct fuse_attr_out)) ?
     0 : EINVAL;
  } else {
   err = (blen == FUSE_COMPAT_ATTR_OUT_SIZE) ? 0 : EINVAL;
  }
  break;

 case 141:
  err = (PAGE_SIZE >= blen) ? 0 : EINVAL;
  break;

 case 129:
  err = (blen == 0) ? 0 : EINVAL;
  break;

 case 136:
  err = (blen == 0) ? 0 : EINVAL;
  break;

 case 137:
  err = (blen == 0) ? 0 : EINVAL;
  break;

 case 145:
  err = (blen == sizeof(struct fuse_open_out)) ? 0 : EINVAL;
  break;

 case 143:
  err = (((struct fuse_read_in *)(
      (char *)ftick->tk_ms_fiov.base +
      sizeof(struct fuse_in_header)
      ))->size >= blen) ? 0 : EINVAL;
  break;

 case 128:
  err = (blen == sizeof(struct fuse_write_out)) ? 0 : EINVAL;
  break;

 case 131:
  if (fuse_libabi_geq(ftick->tk_data, 7, 4)) {
   err = (blen == sizeof(struct fuse_statfs_out)) ?
     0 : EINVAL;
  } else {
   err = (blen == FUSE_COMPAT_STATFS_SIZE) ? 0 : EINVAL;
  }
  break;

 case 140:
  err = (blen == 0) ? 0 : EINVAL;
  break;

 case 156:
  err = (blen == 0) ? 0 : EINVAL;
  break;

 case 132:
  err = (blen == 0) ? 0 : EINVAL;
  break;

 case 152:
 case 149:




  err = 0;
  break;

 case 138:
  err = (blen == 0) ? 0 : EINVAL;
  break;

 case 158:
  err = (blen == 0) ? 0 : EINVAL;
  break;

 case 151:
  if (blen == sizeof(struct fuse_init_out) ||
      blen == FUSE_COMPAT_INIT_OUT_SIZE ||
      blen == FUSE_COMPAT_22_INIT_OUT_SIZE) {
   err = 0;
  } else {
   err = EINVAL;
  }
  break;

 case 144:
  err = (blen == sizeof(struct fuse_open_out)) ? 0 : EINVAL;
  break;

 case 142:
  err = (((struct fuse_read_in *)(
      (char *)ftick->tk_ms_fiov.base +
      sizeof(struct fuse_in_header)
      ))->size >= blen) ? 0 : EINVAL;
  break;

 case 139:
  err = (blen == 0) ? 0 : EINVAL;
  break;

 case 155:
  err = (blen == 0) ? 0 : EINVAL;
  break;

 case 153:
  err = (blen == sizeof(struct fuse_lk_out)) ? 0 : EINVAL;
  break;

 case 134:
  err = (blen == 0) ? 0 : EINVAL;
  break;

 case 133:
  err = (blen == 0) ? 0 : EINVAL;
  break;

 case 162:
  err = (blen == 0) ? 0 : EINVAL;
  break;

 case 160:
  if (fuse_libabi_geq(ftick->tk_data, 7, 9)) {
   err = (blen == sizeof(struct fuse_entry_out) +
       sizeof(struct fuse_open_out)) ? 0 : EINVAL;
  } else {
   err = (blen == FUSE_COMPAT_ENTRY_OUT_SIZE +
       sizeof(struct fuse_open_out)) ? 0 : EINVAL;
  }
  break;

 case 159:
  err = (blen == 0) ? 0 : EINVAL;
  break;

 default:
  panic("FUSE: opcodes out of sync (%d)\n", opcode);
 }

 return err;
}
