
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int64_t ;
struct TYPE_2__ {int l_len; int l_offset; int svid; int exclusive; } ;
struct file_lock {int nsm_status; int status; int flags; int blocking; TYPE_1__ client; int filehandle; } ;
typedef int int32_t ;
typedef int fhandle_t ;
typedef int bool_t ;


 int bcopy (int const*,int *,int) ;

void
fill_file_lock(struct file_lock *fl, const fhandle_t *fh,
    const bool_t exclusive, const int32_t svid,
    const u_int64_t offset, const u_int64_t len,
    const int state, const int status, const int flags, const int blocking)
{
 bcopy(fh, &fl->filehandle, sizeof(fhandle_t));

 fl->client.exclusive = exclusive;
 fl->client.svid = svid;
 fl->client.l_offset = offset;
 fl->client.l_len = len;

 fl->nsm_status = state;
 fl->status = status;
 fl->flags = flags;
 fl->blocking = blocking;
}
