
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* inodesin; int* symbolsin; char** tree; char const* symbol_eob; scalar_t__ uncompressed_size; int treelevels; int fpOut; int fpIn; } ;
typedef TYPE_1__ unpack_descriptor_t ;
typedef scalar_t__ off_t ;


 int EOF ;
 int accepted_bytes (scalar_t__*,int) ;
 int check_siginfo () ;
 int fgetc (int ) ;
 int fputc (char const,int ) ;
 int infile_newdata (int) ;
 int maybe_errx (char*) ;

__attribute__((used)) static void
unpack_decode(const unpack_descriptor_t *unpackd, off_t *bytes_in)
{
 int thislevel, thiscode, thisbyte, inlevelindex;
 int i;
 off_t bytes_out = 0;
 const char *thissymbol;
 thislevel = 0;
 thiscode = thisbyte = 0;

 while ((thisbyte = fgetc(unpackd->fpIn)) != EOF) {
  accepted_bytes(bytes_in, 1);
  infile_newdata(1);
  check_siginfo();






  for (i = 7; i >= 0; i--) {
   thiscode = (thiscode << 1) | ((thisbyte >> i) & 1);


   if (thiscode >= unpackd->inodesin[thislevel]) {
    inlevelindex =
        thiscode - unpackd->inodesin[thislevel];
    if (inlevelindex > unpackd->symbolsin[thislevel])
     maybe_errx("File corrupt");

    thissymbol =
        &(unpackd->tree[thislevel][inlevelindex]);
    if ((thissymbol == unpackd->symbol_eob) &&
        (bytes_out == unpackd->uncompressed_size))
     goto finished;

    fputc((*thissymbol), unpackd->fpOut);
    bytes_out++;


    thislevel = 0; thiscode = 0;
   } else {
    thislevel++;
    if (thislevel > unpackd->treelevels)
     maybe_errx("File corrupt");
   }
  }
 }

finished:
 if (bytes_out != unpackd->uncompressed_size)
  maybe_errx("Premature EOF");
}
