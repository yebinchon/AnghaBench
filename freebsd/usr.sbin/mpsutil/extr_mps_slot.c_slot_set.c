
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long U32 ;
typedef long U16 ;


 int EINVAL ;
 long UINT16_MAX ;
 unsigned long UINT32_MAX ;
 int close (int) ;
 int errno ;
 int mps_open (int ) ;
 scalar_t__ mps_set_slot_status (int,long,long,unsigned long) ;
 int mps_unit ;
 int printf (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 long strtol (char*,char**,int ) ;
 unsigned long strtoul (char*,char**,int ) ;
 int warn (char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
slot_set(int argc, char **argv)
{
 char *endptr;
 unsigned long ux;
 long x;
 int error;
 int fd;
 U32 status;
 U16 handle;
 U16 slot;

 if (argc != 5) {
  warnx("Incorrect number of arguments");
  return (EINVAL);
 }

 if (strcmp(argv[1], "status") != 0) {
  warnx("Invalid argument '%s', expecting 'status'",
      argv[1]);
  return (EINVAL);
 }

 errno = 0;
 x = strtol(argv[2], &endptr, 0);
 if (*endptr != '\0' || errno != 0 || x < 0 || x > UINT16_MAX) {
  warnx("Invalid enclosure handle argument '%s'", argv[2]);
  return (EINVAL);
 }
 handle = x;

 errno = 0;
 x = strtol(argv[3], &endptr, 0);
 if (*endptr != '\0' || errno != 0 || x < 0 || x > UINT16_MAX) {
  warnx("Invalid slot argument '%s'", argv[3]);
  return (EINVAL);
 }
 slot = x;

 errno = 0;
 ux = strtoul(argv[4], &endptr, 0);
 if (*endptr != '\0' || errno != 0 || ux > UINT32_MAX) {
  warnx("Invalid status argument '%s'", argv[4]);
  return (EINVAL);
 }
 status = ux;

 fd = mps_open(mps_unit);
 if (fd < 0) {
  error = errno;
  warn("mps_open");
  return (error);
 }

 if (mps_set_slot_status(fd, handle, slot, status) != 0) {
  warnx("Failed to set status");
  close(fd);
  return (1);
 }

 close(fd);
 printf("Successfully set slot status\n");
 return (0);
}
