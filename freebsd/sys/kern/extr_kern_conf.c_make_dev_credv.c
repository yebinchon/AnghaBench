
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int uid_t ;
struct ucred {int dummy; } ;
struct make_dev_args {int mda_flags; int mda_mode; int mda_unit; int mda_gid; int mda_uid; struct ucred* mda_cr; struct cdevsw* mda_devsw; } ;
struct cdevsw {int dummy; } ;
struct cdev {int dummy; } ;
typedef int gid_t ;


 int make_dev_args_init (struct make_dev_args*) ;
 int make_dev_sv (struct make_dev_args*,struct cdev**,char const*,int ) ;

__attribute__((used)) static int
make_dev_credv(int flags, struct cdev **dres, struct cdevsw *devsw, int unit,
    struct ucred *cr, uid_t uid, gid_t gid, int mode, const char *fmt,
    va_list ap)
{
 struct make_dev_args args;

 make_dev_args_init(&args);
 args.mda_flags = flags;
 args.mda_devsw = devsw;
 args.mda_cr = cr;
 args.mda_uid = uid;
 args.mda_gid = gid;
 args.mda_mode = mode;
 args.mda_unit = unit;
 return (make_dev_sv(&args, dres, fmt, ap));
}
