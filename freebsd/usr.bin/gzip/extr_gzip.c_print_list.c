
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int time_t ;
typedef int off_t ;
typedef int buf ;


 int SEEK_END ;
 char* ctime (int *) ;
 int le32dec (unsigned char*) ;
 int lseek (int,int,int ) ;
 int maybe_warn (char*) ;
 int maybe_warnx (char*) ;
 int print_list_out (int,int,char const*) ;
 int printf (char*,...) ;
 scalar_t__ qflag ;
 int read (int,char*,int) ;
 scalar_t__ vflag ;

__attribute__((used)) static void
print_list(int fd, off_t out, const char *outfile, time_t ts)
{
 static int first = 1;

 static off_t in_tot, out_tot;
 uint32_t crc = 0;

 off_t in = 0, rv;

 if (first) {

  if (vflag)
   printf("method  crc     date  time  ");

  if (qflag == 0)
   printf("  compressed uncompressed  "
          "ratio uncompressed_name\n");
 }
 first = 0;



 if (fd == -1) {
  in = in_tot;
  out = out_tot;
 } else

 {

  rv = lseek(fd, (off_t)(-8), SEEK_END);
  if (rv != -1) {
   unsigned char buf[8];
   uint32_t usize;

   rv = read(fd, (char *)buf, sizeof(buf));
   if (rv == -1)
    maybe_warn("read of uncompressed size");
   else if (rv != sizeof(buf))
    maybe_warnx("read of uncompressed size");

   else {
    usize = le32dec(&buf[4]);
    in = (off_t)usize;

    crc = le32dec(&buf[0]);

   }
  }
 }


 if (vflag && fd == -1)
  printf("                            ");
 else if (vflag) {
  char *date = ctime(&ts);


  date += 4;
  date[12] = 0;
  printf("%5s %08x %11s ", "defla" , crc, date);
 }
 in_tot += in;
 out_tot += out;



 print_list_out(out, in, outfile);
}
