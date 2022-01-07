
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; int revents; } ;
struct child_process {char const** member_0; int out; int err; int git_cmd; } ;


 int EINTR ;
 int POLLIN ;
 int deadchild ;
 int die (char*,int ) ;
 int errno ;
 int error_clnt (char*,int ) ;
 int error_errno (char*) ;
 scalar_t__ finish_command (struct child_process*) ;
 int packet_flush (int) ;
 int packet_write_fmt (int,char*) ;
 scalar_t__ poll (struct pollfd*,int,int) ;
 scalar_t__ process_input (int,int) ;
 int sleep (int) ;
 scalar_t__ start_command (struct child_process*) ;
 int strcmp (char const*,char*) ;
 int strerror (int) ;
 int upload_archive_usage ;
 int usage (int ) ;

int cmd_upload_archive(int argc, const char **argv, const char *prefix)
{
 struct child_process writer = { argv };

 if (argc == 2 && !strcmp(argv[1], "-h"))
  usage(upload_archive_usage);
 argv[0] = "upload-archive--writer";
 writer.out = writer.err = -1;
 writer.git_cmd = 1;
 if (start_command(&writer)) {
  int err = errno;
  packet_write_fmt(1, "NACK unable to spawn subprocess\n");
  die("upload-archive: %s", strerror(err));
 }

 packet_write_fmt(1, "ACK\n");
 packet_flush(1);

 while (1) {
  struct pollfd pfd[2];

  pfd[0].fd = writer.out;
  pfd[0].events = POLLIN;
  pfd[1].fd = writer.err;
  pfd[1].events = POLLIN;
  if (poll(pfd, 2, -1) < 0) {
   if (errno != EINTR) {
    error_errno("poll failed resuming");
    sleep(1);
   }
   continue;
  }
  if (pfd[1].revents & POLLIN)

   if (process_input(pfd[1].fd, 2))
    continue;
  if (pfd[0].revents & POLLIN)

   if (process_input(pfd[0].fd, 1))
    continue;

  if (finish_command(&writer))
   error_clnt("%s", deadchild);
  packet_flush(1);
  break;
 }
 return 0;
}
