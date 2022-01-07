
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmreq {char* nr_name; int nr_cmd; int nr_arg2; int nr_arg1; int nr_tx_rings; char* nr_rx_rings; int nr_flags; int nr_rx_slots; int nr_ringid; int nr_tx_slots; int nr_version; } ;
typedef int nmr ;


 int D (char*,...) ;
 int ND (char*,char const*,...) ;
 int NETMAP_API ;



 int NETMAP_BDG_HOST ;




 int NIOCGINFO ;
 int NIOCREGIF ;
 int NR_REG_ALL_NIC ;
 int NR_REG_NIC_SW ;
 int NR_REG_ONE_NIC ;
 int O_RDWR ;
 int bzero (struct nmreq*,int) ;
 int close (int) ;
 int ioctl (int,int ,struct nmreq*) ;
 int open (char*,int ) ;
 int parse_nmr_config (char*,struct nmreq*) ;
 int perror (char const*) ;
 int strlen (char*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static int
bdg_ctl(const char *name, int nr_cmd, int nr_arg, char *nmr_config, int nr_arg2)
{
 struct nmreq nmr;
 int error = 0;
 int fd = open("/dev/netmap", O_RDWR);

 if (fd == -1) {
  D("Unable to open /dev/netmap");
  return -1;
 }

 bzero(&nmr, sizeof(nmr));
 nmr.nr_version = NETMAP_API;
 if (name != ((void*)0))
  strncpy(nmr.nr_name, name, sizeof(nmr.nr_name)-1);
 nmr.nr_cmd = nr_cmd;
 parse_nmr_config(nmr_config, &nmr);
 nmr.nr_arg2 = nr_arg2;

 switch (nr_cmd) {
 case 133:
 case 130:
  error = ioctl(fd, NIOCREGIF, &nmr);
  if (error == -1) {
   ND("Unable to %s %s", nr_cmd == 133 ? "delete":"create", name);
   perror(name);
  } else {
   ND("Success to %s %s", nr_cmd == 133 ? "delete":"create", name);
  }
  break;
 case 134:
 case 132:
  nmr.nr_flags = NR_REG_ALL_NIC;
  if (nr_arg && nr_arg != NETMAP_BDG_HOST) {
   nmr.nr_flags = NR_REG_NIC_SW;
   nr_arg = 0;
  }
  nmr.nr_arg1 = nr_arg;
  error = ioctl(fd, NIOCREGIF, &nmr);
  if (error == -1) {
   ND("Unable to %s %s to the bridge", nr_cmd ==
       132?"detach":"attach", name);
   perror(name);
  } else
   ND("Success to %s %s to the bridge", nr_cmd ==
       132?"detach":"attach", name);
  break;

 case 131:
  if (strlen(nmr.nr_name)) {
   error = ioctl(fd, NIOCGINFO, &nmr);
   if (error) {
    ND("Unable to obtain info for %s", name);
    perror(name);
   } else
    D("%s at bridge:%d port:%d", name, nmr.nr_arg1,
        nmr.nr_arg2);
   break;
  }


  nmr.nr_arg1 = nmr.nr_arg2 = 0;
  for (; !ioctl(fd, NIOCGINFO, &nmr); nmr.nr_arg2++) {
   D("bridge:%d port:%d %s", nmr.nr_arg1, nmr.nr_arg2,
       nmr.nr_name);
   nmr.nr_name[0] = '\0';
  }

  break;

 case 128:
 case 129:
  nmr.nr_flags |= nmr.nr_tx_slots ?
   NR_REG_ONE_NIC : NR_REG_ALL_NIC;
  nmr.nr_ringid = nmr.nr_rx_slots;

  if (nmr.nr_flags == NR_REG_ALL_NIC)
   nmr.nr_arg1 = 1;
  else
   nmr.nr_arg1 = nmr.nr_tx_rings;

  error = ioctl(fd, NIOCREGIF, &nmr);
  if (!error)
   D("polling on %s %s", nmr.nr_name,
    nr_cmd == 128 ?
    "started" : "stopped");
  else
   D("polling on %s %s (err %d)", nmr.nr_name,
    nr_cmd == 128 ?
    "couldn't start" : "couldn't stop", error);
  break;

 default:
  nmr.nr_cmd = nmr.nr_arg1 = nmr.nr_arg2 = 0;
  error = ioctl(fd, NIOCGINFO, &nmr);
  if (error) {
   ND("Unable to get if info for %s", name);
   perror(name);
  } else
   D("%s: %d queues.", name, nmr.nr_rx_rings);
  break;
 }
 close(fd);
 return error;
}
