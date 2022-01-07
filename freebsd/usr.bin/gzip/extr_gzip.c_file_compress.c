
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uintmax_t ;
typedef int uint32_t ;
struct TYPE_4__ {scalar_t__* zipped; } ;
typedef TYPE_1__ suffixes_t ;
struct stat {int st_size; int st_nlink; scalar_t__ st_mtime; } ;
typedef int off_t ;
struct TYPE_5__ {char* ziplen; int zipped; } ;


 int O_CREAT ;
 int O_EXCL ;
 int O_RDONLY ;
 int O_WRONLY ;
 int STDOUT_FILENO ;
 int basename (char*) ;
 scalar_t__ cflag ;
 scalar_t__ check_outfile (char*) ;
 TYPE_1__* check_suffix (char*,int ) ;
 int close (int) ;
 int copymodes (int,struct stat*,char*) ;
 int fclose (int ) ;
 scalar_t__ fflag ;
 scalar_t__ fstat (int,struct stat*) ;
 int gz_compress (int,int,int*,int ,int ) ;
 int infile_set (char*,int) ;
 int maybe_warn (char*,...) ;
 int maybe_warnx (char*,char*,...) ;
 int memcpy (char*,int ,char*) ;
 int open (char*,int,...) ;
 char* remove_file ;
 scalar_t__ snprintf (char*,size_t,char*,char*,int ) ;
 int stdin ;
 TYPE_2__* suffixes ;
 int unlink (char*) ;
 int unlink_input (char*,struct stat*) ;

__attribute__((used)) static off_t
file_compress(char *file, char *outfile, size_t outsize)
{
 int in;
 int out;
 off_t size, in_size;

 struct stat isb, osb;
 const suffixes_t *suff;


 in = open(file, O_RDONLY);
 if (in == -1) {
  maybe_warn("can't open %s", file);
  return (-1);
 }


 if (fstat(in, &isb) != 0) {
  maybe_warn("couldn't stat: %s", file);
  close(in);
  return (-1);
 }



 if (fstat(in, &isb) != 0) {
  close(in);
  maybe_warn("can't stat %s", file);
  return -1;
 }
 infile_set(file, isb.st_size);


 if (cflag == 0) {

  if (isb.st_nlink > 1 && fflag == 0) {
   maybe_warnx("%s has %ju other link%s -- "
        "skipping", file,
        (uintmax_t)isb.st_nlink - 1,
        isb.st_nlink == 1 ? "" : "s");
   close(in);
   return -1;
  }

  if (fflag == 0 && (suff = check_suffix(file, 0)) &&
      suff->zipped[0] != 0) {
   maybe_warnx("%s already has %s suffix -- unchanged",
       file, suff->zipped);
   close(in);
   return (-1);
  }



  if ((size_t)snprintf(outfile, outsize, "%s%s",
      file, suffixes[0].zipped) >= outsize)
   memcpy(outfile + outsize - suffixes[0].ziplen - 1,
       suffixes[0].zipped, suffixes[0].ziplen + 1);


  if (check_outfile(outfile) == 0) {
   close(in);
   return (-1);
  }

 }

 if (cflag == 0) {
  out = open(outfile, O_WRONLY | O_CREAT | O_EXCL, 0600);
  if (out == -1) {
   maybe_warn("could not create output: %s", outfile);
   fclose(stdin);
   return (-1);
  }

  remove_file = outfile;

 } else
  out = STDOUT_FILENO;

 in_size = gz_compress(in, out, &size, basename(file), (uint32_t)isb.st_mtime);

 (void)close(in);
 if (cflag != 0)
  return in_size == -1 ? -1 : size;


 if (fstat(out, &osb) != 0) {
  maybe_warn("couldn't stat: %s", outfile);
  goto bad_outfile;
 }

 if (osb.st_size != size) {
  maybe_warnx("output file: %s wrong size (%ju != %ju), deleting",
      outfile, (uintmax_t)osb.st_size, (uintmax_t)size);
  goto bad_outfile;
 }

 copymodes(out, &isb, outfile);
 remove_file = ((void*)0);

 if (close(out) == -1)
  maybe_warn("couldn't close output");


 unlink_input(file, &isb);
 return (size);


    bad_outfile:
 if (close(out) == -1)
  maybe_warn("couldn't close output");

 maybe_warnx("leaving original %s", file);
 unlink(outfile);
 return (size);

}
