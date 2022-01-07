
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpv_file_node {int read; scalar_t__ length; int status; } ;
typedef size_t ssize_t ;


 int DPV_STATUS_DONE ;
 int EXIT_FAILURE ;
 int STDIN_FILENO ;
 int bsize ;
 char* buf ;
 int close (int) ;
 int dpv_overall_read ;
 int end_dialog () ;
 int err (int ,char*) ;
 int fd ;
 int fsync (int) ;
 scalar_t__ no_overrun ;
 scalar_t__ operate_common (struct dpv_file_node*,int) ;
 size_t read (int,char*,int ) ;
 char* strchr (char*,char) ;
 size_t write (int,char*,size_t) ;

__attribute__((used)) static int
operate_on_lines(struct dpv_file_node *file, int out)
{
 char *p;
 int progress;
 ssize_t r, w;

 if (operate_common(file, out) < 0)
  return (-1);


 if ((r = read(fd, buf, bsize)) <= 0) {
  if (fd != STDIN_FILENO)
   close(fd);
  fd = -1;
  file->status = DPV_STATUS_DONE;
  return (100);
 }
 buf[r] = '\0';


 if (out >= 0) {
  if ((w = write(out, buf, r)) < 0) {
   end_dialog();
   err(EXIT_FAILURE, "output");
  }
  fsync(out);
 }


 for (p = buf; p != ((void*)0) && *p != '\0';)
  if ((p = strchr(p, '\n')) != ((void*)0))
   dpv_overall_read++, p++, file->read++;


 if (file->length >= 0) {
  progress = (file->read * 100 / file->length);


  if (no_overrun && progress == 100 && file->read < file->length)
   progress--;

  return (progress);
 } else
  return (-1);
}
