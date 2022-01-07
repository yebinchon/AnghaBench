
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
typedef scalar_t__ uint64_t ;
struct camdd_io_opts {scalar_t__ blocksize; scalar_t__ dev_name; int queue_depth; int offset; } ;
struct TYPE_4__ {int st_size; int st_mode; } ;
struct camdd_dev_file {int fd; scalar_t__ filename; int file_type; int file_flags; TYPE_2__ sb; } ;
struct TYPE_3__ {struct camdd_dev_file file; } ;
struct camdd_dev {scalar_t__ device_name; scalar_t__ blocksize; int sector_size; int start_offset_bytes; int max_sector; int * fetch; int run; int target_queue_depth; TYPE_1__ dev_spec; } ;
typedef unsigned int off_t ;


 int CAMDD_DEV_FILE ;
 int CAMDD_FF_CAN_SEEK ;
 scalar_t__ CAMDD_FILE_DEFAULT_BLOCK ;
 int CAMDD_FILE_DEFAULT_DEPTH ;


 int CAMDD_FILE_PIPE ;


 int CAMDD_FILE_TTY ;
 int DIOCGMEDIASIZE ;
 int DIOCGSECTORSIZE ;
 int D_DISK ;
 int D_MEM ;
 int D_TAPE ;
 int D_TTY ;
 int FIODTYPE ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISREG (int ) ;
 struct camdd_dev* camdd_alloc_dev (int ,int *,int ,int,int) ;
 int camdd_file_run ;
 int camdd_free_dev (struct camdd_dev*) ;
 int camdd_probe_tape (int,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int err (int,char*,scalar_t__) ;
 int errx (int,char*,scalar_t__,...) ;
 int fstat (int,TYPE_2__*) ;
 int ioctl (int,int ,...) ;
 int strlcpy (scalar_t__,scalar_t__,int) ;
 int warn (char*,scalar_t__) ;
 int warnx (char*,int,scalar_t__,...) ;

struct camdd_dev *
camdd_probe_file(int fd, struct camdd_io_opts *io_opts, int retry_count,
    int timeout)
{
 struct camdd_dev *dev = ((void*)0);
 struct camdd_dev_file *file_dev;
 uint64_t blocksize = io_opts->blocksize;

 dev = camdd_alloc_dev(CAMDD_DEV_FILE, ((void*)0), 0, retry_count, timeout);
 if (dev == ((void*)0))
  goto bailout;

 file_dev = &dev->dev_spec.file;
 file_dev->fd = fd;
 strlcpy(file_dev->filename, io_opts->dev_name,
     sizeof(file_dev->filename));
 strlcpy(dev->device_name, io_opts->dev_name, sizeof(dev->device_name));
 if (blocksize == 0)
  dev->blocksize = CAMDD_FILE_DEFAULT_BLOCK;
 else
  dev->blocksize = blocksize;

 if ((io_opts->queue_depth != 0)
  && (io_opts->queue_depth != 1)) {
  warnx("Queue depth %ju for %s ignored, only 1 outstanding "
      "command supported", (uintmax_t)io_opts->queue_depth,
      io_opts->dev_name);
 }
 dev->target_queue_depth = CAMDD_FILE_DEFAULT_DEPTH;
 dev->run = camdd_file_run;
 dev->fetch = ((void*)0);






 dev->sector_size = 1;

 if ((fd != STDIN_FILENO)
  && (fd != STDOUT_FILENO)) {
  int retval;

  retval = fstat(fd, &file_dev->sb);
  if (retval != 0) {
   warn("Cannot stat %s", dev->device_name);
   goto bailout_error;
  }
  if (S_ISREG(file_dev->sb.st_mode)) {
   file_dev->file_type = 129;
  } else if (S_ISCHR(file_dev->sb.st_mode)) {
   int type;

   if (ioctl(fd, FIODTYPE, &type) == -1)
    err(1, "FIODTYPE ioctl failed on %s",
        dev->device_name);
   else {
    if (type & D_TAPE)
     file_dev->file_type = 128;
    else if (type & D_DISK)
     file_dev->file_type = 131;
    else if (type & D_MEM)
     file_dev->file_type = 130;
    else if (type & D_TTY)
     file_dev->file_type = CAMDD_FILE_TTY;
   }
  } else if (S_ISDIR(file_dev->sb.st_mode)) {
   errx(1, "cannot operate on directory %s",
       dev->device_name);
  } else if (S_ISFIFO(file_dev->sb.st_mode)) {
   file_dev->file_type = CAMDD_FILE_PIPE;
  } else
   errx(1, "Cannot determine file type for %s",
       dev->device_name);

  switch (file_dev->file_type) {
  case 129:
   if (file_dev->sb.st_size != 0)
    dev->max_sector = file_dev->sb.st_size - 1;
   else
    dev->max_sector = 0;
   file_dev->file_flags |= CAMDD_FF_CAN_SEEK;
   break;
  case 128: {
   uint64_t max_iosize, max_blk, min_blk, blk_gran;







   retval = camdd_probe_tape(fd, dev->device_name,
       &max_iosize, &max_blk, &min_blk, &blk_gran);
   if (retval != 0)
    errx(1, "Unable to probe tape %s",
        dev->device_name);







   if (dev->blocksize > max_iosize) {
    warnx("Blocksize %u too big for %s, limiting "
        "to %ju", dev->blocksize, dev->device_name,
        max_iosize);
    dev->blocksize = max_iosize;
   }




   if (dev->blocksize < min_blk) {
    warnx("Blocksize %u too small for %s, "
        "increasing to %ju", dev->blocksize,
        dev->device_name, min_blk);
    dev->blocksize = min_blk;
   }





   if ((blk_gran != 0)
    && (dev->blocksize % (1 << blk_gran))) {
    warnx("Blocksize %u for %s not a multiple of "
        "%d, adjusting to %d", dev->blocksize,
        dev->device_name, (1 << blk_gran),
        dev->blocksize & ~((1 << blk_gran) - 1));
    dev->blocksize &= ~((1 << blk_gran) - 1);
   }

   if (dev->blocksize == 0) {
    errx(1, "Unable to derive valid blocksize for "
        "%s", dev->device_name);
   }






   dev->sector_size = dev->blocksize;
   break;
  }
  case 131: {
   off_t media_size;
   unsigned int sector_size;

   file_dev->file_flags |= CAMDD_FF_CAN_SEEK;

   if (ioctl(fd, DIOCGSECTORSIZE, &sector_size) == -1) {
    err(1, "DIOCGSECTORSIZE ioctl failed on %s",
        dev->device_name);
   }

   if (sector_size == 0) {
    errx(1, "DIOCGSECTORSIZE ioctl returned "
        "invalid sector size %u for %s",
        sector_size, dev->device_name);
   }

   if (ioctl(fd, DIOCGMEDIASIZE, &media_size) == -1) {
    err(1, "DIOCGMEDIASIZE ioctl failed on %s",
        dev->device_name);
   }

   if (media_size == 0) {
    errx(1, "DIOCGMEDIASIZE ioctl returned "
        "invalid media size %ju for %s",
        (uintmax_t)media_size, dev->device_name);
   }

   if (dev->blocksize % sector_size) {
    errx(1, "%s blocksize %u not a multiple of "
        "sector size %u", dev->device_name,
        dev->blocksize, sector_size);
   }

   dev->sector_size = sector_size;
   dev->max_sector = (media_size / sector_size) - 1;
   break;
  }
  case 130:
   file_dev->file_flags |= CAMDD_FF_CAN_SEEK;
   break;
  default:
   break;
  }
 }

 if ((io_opts->offset != 0)
  && ((file_dev->file_flags & CAMDD_FF_CAN_SEEK) == 0)) {
  warnx("Offset %ju specified for %s, but we cannot seek on %s",
      io_opts->offset, io_opts->dev_name, io_opts->dev_name);
  goto bailout_error;
 }
bailout:
 return (dev);

bailout_error:
 camdd_free_dev(dev);
 return (((void*)0));
}
