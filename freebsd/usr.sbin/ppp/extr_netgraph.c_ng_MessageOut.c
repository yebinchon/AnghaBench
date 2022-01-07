
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct ngdevice {TYPE_1__ dev; int cs; } ;


 int LogDEBUG ;
 int LogWARN ;
 int NG_PATHSIZ ;
 scalar_t__ NgSendAsciiMsg (int ,char*,char*,char const*) ;
 char* alloca (size_t) ;
 int errno ;
 int log_Printf (int ,char*,int ,...) ;
 int memcpy (char*,char const*,size_t) ;
 int strcpy (char*,char*) ;
 size_t strcspn (char const*,char*) ;
 int strerror (int ) ;
 int strspn (char const*,char*) ;

__attribute__((used)) static int
ng_MessageOut(struct ngdevice *dev, const char *data)
{
  char path[NG_PATHSIZ];
  char *fmt;
  size_t len;
  int pos, dpos;





  data += strspn(data, " \t");
  len = strcspn(data, " \t");
  if (len >= sizeof path) {
    log_Printf(LogWARN, "%s: %.*s: Node path too long\n",
                 dev->dev.name, len, data);
    return 0;
  }
  memcpy(path, data, len);
  path[len] = '\0';
  data += len;

  data += strspn(data, " \t");
  len = strcspn(data, " \t");
  for (pos = len; pos >= 0; pos--)
    if (data[pos] == '%')
      len++;
  if ((fmt = alloca(len + 4)) == ((void*)0)) {
    log_Printf(LogWARN, "%s: alloca(%d) failure... %s\n",
               dev->dev.name, len + 4, strerror(errno));
    return 0;
  }





  for (pos = dpos = 0; pos < (int)len;) {
    if (data[dpos] == '%')
      fmt[pos++] = '%';
    fmt[pos++] = data[dpos++];
  }
  strcpy(fmt + pos, " %s");
  data += dpos;

  data += strspn(data, " \t");
  if (NgSendAsciiMsg(dev->cs, path, fmt, data) < 0) {
    log_Printf(LogDEBUG, "%s: NgSendAsciiMsg (to %s): \"%s\", \"%s\": %s\n",
               dev->dev.name, path, fmt, data, strerror(errno));
    return 0;
  }

  return 1;
}
