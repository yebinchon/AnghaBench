
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int time_t ;
struct mfi_pr_properties {scalar_t__ next_exec; scalar_t__ exec_freq; scalar_t__ op_mode; } ;
typedef int prop ;


 int EINVAL ;
 int ENXIO ;
 int MFI_DCMD_PR_SET_PROPERTIES ;
 scalar_t__ MFI_PR_OPMODE_AUTO ;
 scalar_t__ MFI_PR_OPMODE_DISABLED ;
 scalar_t__ MFI_PR_OPMODE_MANUAL ;
 int O_RDWR ;
 char* adapter_time (int ,scalar_t__,scalar_t__) ;
 int close (int) ;
 int errno ;
 scalar_t__ mfi_dcmd_command (int,int ,struct mfi_pr_properties*,int,int *,int ,int *) ;
 int mfi_get_time (int,scalar_t__*) ;
 int mfi_open (int ,int ) ;
 int mfi_unit ;
 int patrol_get_props (int,struct mfi_pr_properties*) ;
 int printf (char*,char*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 long strtol (char*,char**,int ) ;
 int time (int *) ;
 int warn (char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
patrol_config(int ac, char **av)
{
 struct mfi_pr_properties prop;
 long val;
 time_t now;
 int error, fd;
 uint32_t at, next_exec, exec_freq;
 char *cp;
 uint8_t op_mode;

 exec_freq = 0;
 next_exec = 0;
 if (ac < 2) {
  warnx("patrol: command required");
  return (EINVAL);
 }
 if (strcasecmp(av[1], "auto") == 0) {
  op_mode = MFI_PR_OPMODE_AUTO;
  if (ac > 2) {
   if (strcasecmp(av[2], "continuously") == 0)
    exec_freq = 0xffffffff;
   else {
    val = strtol(av[2], &cp, 0);
    if (*cp != '\0') {
     warnx("patrol: Invalid interval %s",
         av[2]);
     return (EINVAL);
    }
    exec_freq = val;
   }
  }
  if (ac > 3) {
   val = strtol(av[3], &cp, 0);
   if (*cp != '\0' || val < 0) {
    warnx("patrol: Invalid start time %s", av[3]);
    return (EINVAL);
   }
   next_exec = val;
  }
 } else if (strcasecmp(av[1], "manual") == 0)
  op_mode = MFI_PR_OPMODE_MANUAL;
 else if (strcasecmp(av[1], "disable") == 0)
  op_mode = MFI_PR_OPMODE_DISABLED;
 else {
  warnx("patrol: Invalid command %s", av[1]);
  return (EINVAL);
 }

 fd = mfi_open(mfi_unit, O_RDWR);
 if (fd < 0) {
  error = errno;
  warn("mfi_open");
  return (error);
 }

 error = patrol_get_props(fd, &prop);
 if (error) {
  close(fd);
  return (error);
 }
 prop.op_mode = op_mode;
 if (op_mode == MFI_PR_OPMODE_AUTO) {
  if (ac > 2)
   prop.exec_freq = exec_freq;
  if (ac > 3) {
   time(&now);
   mfi_get_time(fd, &at);
   if (at == 0) {
    close(fd);
    return (ENXIO);
   }
   prop.next_exec = at + next_exec;
   printf("Starting next patrol read at %s",
       adapter_time(now, at, prop.next_exec));
  }
 }
 if (mfi_dcmd_command(fd, MFI_DCMD_PR_SET_PROPERTIES, &prop,
     sizeof(prop), ((void*)0), 0, ((void*)0)) < 0) {
  error = errno;
  warn("Failed to set patrol read properties");
  close(fd);
  return (error);
 }

 close(fd);

 return (0);
}
