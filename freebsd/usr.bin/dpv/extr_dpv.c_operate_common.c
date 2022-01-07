
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_blksize; int st_mode; } ;
struct dpv_file_node {int path; void* status; } ;
typedef int blksize_t ;


 int BUFSIZE_MAX ;
 scalar_t__ BUFSIZE_SMALL ;


 void* DPV_STATUS_FAILED ;
 int EXIT_FAILURE ;
 scalar_t__ MAX (int ,int ) ;
 int MAXPHYS ;
 scalar_t__ MIN (int ,int) ;
 int O_RDONLY ;
 scalar_t__ PHYSPAGES_THRESHOLD ;
 scalar_t__ STDIN_FILENO ;
 scalar_t__ S_ISREG (int ) ;
 int _SC_PAGESIZE ;
 int _SC_PHYS_PAGES ;
 scalar_t__ bsize ;
 int * buf ;
 int close (int ) ;
 int end_dialog () ;
 int err (int ,char*) ;
 scalar_t__ fd ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ isatty (scalar_t__) ;
 int * malloc (scalar_t__) ;
 scalar_t__ multiple ;
 scalar_t__ open (char*,int ) ;
 int output_type ;
 scalar_t__ realpath (int,char*) ;
 char* rpath ;
 scalar_t__ sysconf (int ) ;
 int warn (char*,int) ;

__attribute__((used)) static int
operate_common(struct dpv_file_node *file, int out)
{
 struct stat sb;


 if (fd < 0) {
  if (multiple) {

   if (realpath(file->path, rpath) == 0 ||
       (fd = open(rpath, O_RDONLY)) < 0) {
    warn("%s", file->path);
    file->status = DPV_STATUS_FAILED;
    return (-1);
   }
  } else {






   fd = STDIN_FILENO;
   if (isatty(fd)) {
    fd = open("/dev/stdin", O_RDONLY);
    close(fd--);
   }







   switch(output_type) {
   case 129:
    fd -= 1;
    break;
   case 128:
    fd -= 2;
    break;
   }
  }
 }


 if (buf == ((void*)0)) {

  if (out >= 0) {
   if (fstat(out, &sb) != 0) {
    warn("%i", out);
    file->status = DPV_STATUS_FAILED;
    return (-1);
   }
   if (S_ISREG(sb.st_mode)) {
    if (sysconf(_SC_PHYS_PAGES) >
        PHYSPAGES_THRESHOLD)
     bsize = MIN(BUFSIZE_MAX, MAXPHYS * 8);
    else
     bsize = BUFSIZE_SMALL;
   } else
    bsize = MAX(sb.st_blksize,
        (blksize_t)sysconf(_SC_PAGESIZE));
  } else
   bsize = MIN(BUFSIZE_MAX, MAXPHYS * 8);


  if ((buf = malloc(bsize+1)) == ((void*)0)) {
   end_dialog();
   err(EXIT_FAILURE, "Out of memory?!");
  }
 }

 return (0);
}
