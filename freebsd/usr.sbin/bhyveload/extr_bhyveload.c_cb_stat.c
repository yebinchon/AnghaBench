
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int st_mode; int st_uid; int st_gid; int st_size; } ;
struct cb_file {TYPE_1__ cf_stat; } ;



__attribute__((used)) static int
cb_stat(void *arg, void *h, int *mode, int *uid, int *gid, uint64_t *size)
{
 struct cb_file *cf = h;

 *mode = cf->cf_stat.st_mode;
 *uid = cf->cf_stat.st_uid;
 *gid = cf->cf_stat.st_gid;
 *size = cf->cf_stat.st_size;
 return (0);
}
