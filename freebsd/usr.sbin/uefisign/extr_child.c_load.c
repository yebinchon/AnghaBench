
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; } ;
struct executable {char* x_buf; size_t x_len; int x_path; int x_fp; } ;


 int err (int,char*,int ,...) ;
 int errx (int,char*,int ) ;
 int fileno (int ) ;
 size_t fread (char*,size_t,int,int ) ;
 int fstat (int,struct stat*) ;
 char* malloc (size_t) ;

__attribute__((used)) static void
load(struct executable *x)
{
 int error, fd;
 struct stat sb;
 char *buf;
 size_t nread, len;

 fd = fileno(x->x_fp);

 error = fstat(fd, &sb);
 if (error != 0)
  err(1, "%s: fstat", x->x_path);

 len = sb.st_size;
 if (len <= 0)
  errx(1, "%s: file is empty", x->x_path);

 buf = malloc(len);
 if (buf == ((void*)0))
  err(1, "%s: cannot malloc %zd bytes", x->x_path, len);

 nread = fread(buf, len, 1, x->x_fp);
 if (nread != 1)
  err(1, "%s: fread", x->x_path);

 x->x_buf = buf;
 x->x_len = len;
}
