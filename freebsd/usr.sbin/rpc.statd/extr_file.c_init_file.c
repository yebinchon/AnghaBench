
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ off_t ;
typedef int buf ;
struct TYPE_5__ {int noOfHosts; int ourState; TYPE_1__* hosts; } ;
struct TYPE_4__ {int * monList; void* notifyReqd; } ;
typedef TYPE_1__ HostInfo ;
typedef TYPE_2__ FileLayout ;


 scalar_t__ ENOENT ;
 int FALSE ;
 int HEADER_LEN ;
 scalar_t__ MAP_FAILED ;
 int MAP_SHARED ;
 int O_CREAT ;
 int O_RDWR ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SEEK_END ;
 int SEEK_SET ;
 void* TRUE ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*,char const*) ;
 scalar_t__ lseek (scalar_t__,long,int ) ;
 int memset (char*,int ,int) ;
 scalar_t__ mmap (int *,int,int,int ,scalar_t__,int ) ;
 scalar_t__ open (char const*,int,...) ;
 scalar_t__ status_fd ;
 scalar_t__ status_file_len ;
 TYPE_2__* status_info ;
 int warnx (char*) ;
 int write (scalar_t__,char*,int) ;

void init_file(const char *filename)
{
  int new_file = FALSE;
  char buf[HEADER_LEN];
  int i;


  status_fd = open(filename, O_RDWR);
  if ((status_fd < 0) && (errno == ENOENT))
  {
    status_fd = open(filename, O_RDWR | O_CREAT, 0644);
    new_file = TRUE;
  }
  if (status_fd < 0)
    errx(1, "unable to open status file %s", filename);



  status_info = (FileLayout *)
    mmap(((void*)0), 0x10000000, PROT_READ | PROT_WRITE, MAP_SHARED, status_fd, 0);

  if (status_info == (FileLayout *) MAP_FAILED)
    err(1, "unable to mmap() status file");

  status_file_len = lseek(status_fd, 0L, SEEK_END);



  if (!new_file)
  {
    if ((status_file_len < (off_t)HEADER_LEN) || (status_file_len
      < (off_t)(HEADER_LEN + sizeof(HostInfo) * status_info->noOfHosts)) )
    {
      warnx("status file is corrupt");
      new_file = TRUE;
    }
  }


  if (new_file)
  {
    memset(buf, 0, sizeof(buf));
    lseek(status_fd, 0L, SEEK_SET);
    write(status_fd, buf, HEADER_LEN);
    status_file_len = HEADER_LEN;
  }
  else
  {
    for (i = 0; i < status_info->noOfHosts; i++)
    {
      HostInfo *this_host = &status_info->hosts[i];

      if (this_host->monList)
      {
 this_host->notifyReqd = TRUE;
 this_host->monList = ((void*)0);
      }
    }

    status_info->ourState = (status_info->ourState + 2) & 0xfffffffe;
                 status_info->ourState++;
  }
}
