
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disk_entry {char* dev_name; int capacity; int index; } ;
typedef int off_t ;
typedef int dev_path ;


 int DIOCGMEDIASIZE ;
 int HRDBG (char*,char*,...) ;
 int INT_MAX ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 char* _PATH_DEV ;
 int close (int) ;
 int errno ;
 scalar_t__ ioctl (int,int ,int*) ;
 int open (char*,int) ;
 int partition_tbl_handle_disk (int ,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strerror (int ) ;

__attribute__((used)) static void
disk_query_disk(struct disk_entry *entry)
{
 char dev_path[128];
 int fd;
 off_t mediasize;

 if (entry == ((void*)0) || entry->dev_name[0] == '\0')
  return;

 snprintf(dev_path, sizeof(dev_path),
     "%s%s", _PATH_DEV, entry->dev_name);
 entry->capacity = 0;

 HRDBG("OPENING device %s", dev_path);
 if ((fd = open(dev_path, O_RDONLY|O_NONBLOCK)) == -1) {
  HRDBG("OPEN device %s failed: %s", dev_path, strerror(errno));
  return;
 }

 if (ioctl(fd, DIOCGMEDIASIZE, &mediasize) < 0) {
  HRDBG("DIOCGMEDIASIZE for device %s failed: %s",
      dev_path, strerror(errno));
  (void)close(fd);
  return;
 }

 mediasize = mediasize / 1024;
 entry->capacity = (mediasize > INT_MAX ? INT_MAX : mediasize);
 partition_tbl_handle_disk(entry->index, entry->dev_name);

 (void)close(fd);
}
