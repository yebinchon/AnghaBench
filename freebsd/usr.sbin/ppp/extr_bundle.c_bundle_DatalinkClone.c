
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datalink {int dummy; } ;
struct bundle {int dummy; } ;


 int LogWARN ;
 scalar_t__ bundle2datalink (struct bundle*,char const*) ;
 int bundle_DatalinkLinkin (struct bundle*,int ) ;
 int datalink_Clone (struct datalink*,char const*) ;
 int log_Printf (int ,char*,char const*) ;

int
bundle_DatalinkClone(struct bundle *bundle, struct datalink *dl,
                     const char *name)
{
  if (bundle2datalink(bundle, name)) {
    log_Printf(LogWARN, "Clone: %s: name already exists\n", name);
    return 0;
  }

  bundle_DatalinkLinkin(bundle, datalink_Clone(dl, name));
  return 1;
}
