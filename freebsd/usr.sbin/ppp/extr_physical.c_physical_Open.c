
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {char* full; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {char* devlist; int ndev; } ;
struct physical {int fd; scalar_t__ type; TYPE_3__ name; TYPE_2__ link; int * handler; TYPE_1__ cfg; } ;
struct TYPE_8__ {int * (* create ) (struct physical*) ;} ;


 int ID0open (char*,int) ;
 int LogDEBUG ;
 int LogWARN ;
 unsigned int NDEVICES ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int PHYSICAL_NOFORCE ;
 scalar_t__ PHYS_DIRECT ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int close (int ) ;
 TYPE_4__* devices ;
 int errno ;
 int log_Printf (int ,char*,int ,...) ;
 int physical_Found (struct physical*) ;
 scalar_t__ physical_Lock (struct physical*) ;
 int physical_SetDevice (struct physical*,char*) ;
 int physical_SetupStack (struct physical*,char*,int ) ;
 int physical_Unlock (struct physical*) ;
 int strerror (int) ;
 scalar_t__ strlen (char*) ;
 int * stub1 (struct physical*) ;
 int * stub2 (struct physical*) ;

int
physical_Open(struct physical *p)
{
  char *dev;
  int devno, wasfd, err;
  unsigned h;

  if (p->fd >= 0)
    log_Printf(LogDEBUG, "%s: Open: Modem is already open!\n", p->link.name);

  else if (p->type == PHYS_DIRECT) {
    physical_SetDevice(p, "");
    p->fd = STDIN_FILENO;
    for (h = 0; h < NDEVICES && p->handler == ((void*)0) && p->fd >= 0; h++)
      p->handler = (*devices[h].create)(p);
    close(STDOUT_FILENO);
    if (p->fd >= 0) {
      if (p->handler == ((void*)0)) {
        physical_SetupStack(p, "unknown", PHYSICAL_NOFORCE);
        log_Printf(LogDEBUG, "%s: stdin is unidentified\n", p->link.name);
      }
      physical_Found(p);
    }
  } else {
    dev = p->cfg.devlist;
    devno = 0;
    while (devno < p->cfg.ndev && p->fd < 0) {
      physical_SetDevice(p, dev);
      if (physical_Lock(p)) {
        err = 0;

        if (*p->name.full == '/') {
          p->fd = ID0open(p->name.full, O_RDWR | O_NONBLOCK);
          if (p->fd < 0)
            err = errno;
        }

        wasfd = p->fd;
        for (h = 0; h < NDEVICES && p->handler == ((void*)0); h++)
          if ((p->handler = (*devices[h].create)(p)) == ((void*)0) && wasfd != p->fd)
            break;

        if (p->fd < 0) {
          if (h == NDEVICES) {
            if (err)
       log_Printf(LogWARN, "%s: %s: %s\n", p->link.name, p->name.full,
                         strerror(errno));
            else
       log_Printf(LogWARN, "%s: Device (%s) must begin with a '/',"
                         " a '!' or contain at least one ':'\n", p->link.name,
                         p->name.full);
          }
          physical_Unlock(p);
        } else
          physical_Found(p);
      }
      dev += strlen(dev) + 1;
      devno++;
    }
  }

  return p->fd;
}
