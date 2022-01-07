
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct camdd_dev_pass {int dummy; } ;
struct TYPE_2__ {struct camdd_dev_pass pass; } ;
struct camdd_dev {scalar_t__ next_io_pos_bytes; scalar_t__ sector_size; scalar_t__ blocksize; scalar_t__ max_sector; scalar_t__ sector_io_limit; TYPE_1__ dev_spec; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ min (scalar_t__,scalar_t__) ;

int
camdd_get_next_lba_len(struct camdd_dev *dev, uint64_t *lba, ssize_t *len)
{
 struct camdd_dev_pass *pass_dev;
 uint32_t num_blocks;
 int retval = 0;

 pass_dev = &dev->dev_spec.pass;

 *lba = dev->next_io_pos_bytes / dev->sector_size;
 *len = dev->blocksize;
 num_blocks = *len / dev->sector_size;






 if ((dev->max_sector != 0)
  || (dev->sector_io_limit != 0)) {
  uint64_t max_sector;

  if ((dev->max_sector != 0)
   && (dev->sector_io_limit != 0))
   max_sector = min(dev->sector_io_limit, dev->max_sector);
  else if (dev->max_sector != 0)
   max_sector = dev->max_sector;
  else
   max_sector = dev->sector_io_limit;







  if (*lba > max_sector) {
   *len = 0;
   retval = 1;
  } else if (((*lba + num_blocks) > max_sector + 1)
   || ((*lba + num_blocks) < *lba)) {





   num_blocks = (max_sector + 1) - *lba;
   *len = num_blocks * dev->sector_size;
   retval = 1;
  }
 }

 dev->next_io_pos_bytes += *len;

 return (retval);
}
