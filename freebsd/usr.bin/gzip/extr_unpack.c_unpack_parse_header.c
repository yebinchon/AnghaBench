
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uncompressed_size; unsigned char treelevels; unsigned char* symbolsin; int symbol_size; int * symbol_eob; int * fpIn; int ** tree; int * symbol; int * inodesin; int * fpOut; } ;
typedef TYPE_1__ unpack_descriptor_t ;
typedef scalar_t__ ssize_t ;
typedef int off_t ;


 int EOF ;
 unsigned char HTREE_MAXLEVEL ;
 int PACK_HEADER_LENGTH ;
 int accepted_bytes (int *,int) ;
 void* calloc (int,int) ;
 void* fdopen (int,char*) ;
 int fgetc (int *) ;
 int infile_newdata (scalar_t__) ;
 int maybe_err (char*) ;
 int maybe_errx (char*) ;
 int memcpy (unsigned char*,char*,size_t) ;
 scalar_t__ read (int,unsigned char*,size_t) ;
 int unpackd_fill_inodesin (TYPE_1__*,int ) ;

__attribute__((used)) static void
unpack_parse_header(int in, int out, char *pre, size_t prelen, off_t *bytes_in,
    unpack_descriptor_t *unpackd)
{
 unsigned char hdr[PACK_HEADER_LENGTH];
 ssize_t bytesread;
 int i, j, thisbyte;

 if (prelen > sizeof hdr)
  maybe_err("prelen too long");


 if (prelen != 0)
  memcpy(hdr, pre, prelen);


 bytesread = read(in, hdr + prelen, PACK_HEADER_LENGTH - prelen);
 if (bytesread < 0)
  maybe_err("Error reading pack header");
 infile_newdata(bytesread);

 accepted_bytes(bytes_in, PACK_HEADER_LENGTH);


 unpackd->uncompressed_size = 0;
 for (i = 2; i <= 5; i++) {
  unpackd->uncompressed_size <<= 8;
  unpackd->uncompressed_size |= hdr[i];
 }


 unpackd->treelevels = hdr[6];
 if (unpackd->treelevels > HTREE_MAXLEVEL || unpackd->treelevels < 1)
  maybe_errx("Huffman tree has insane levels");


 if ((unpackd->fpIn = fdopen(in, "r")) == ((void*)0))
  maybe_err("Can not fdopen() input stream");
 if ((unpackd->fpOut = fdopen(out, "w")) == ((void*)0))
  maybe_err("Can not fdopen() output stream");


 unpackd->inodesin =
     calloc(unpackd->treelevels, sizeof(*(unpackd->inodesin)));
 unpackd->symbolsin =
     calloc(unpackd->treelevels, sizeof(*(unpackd->symbolsin)));
 unpackd->tree =
     calloc(unpackd->treelevels, (sizeof(*(unpackd->tree))));
 if (unpackd->inodesin == ((void*)0) || unpackd->symbolsin == ((void*)0) ||
     unpackd->tree == ((void*)0))
  maybe_err("calloc");


 unpackd->treelevels--;


 unpackd->symbol_size = 1;
 for (i = 0; i <= unpackd->treelevels; i++) {
  if ((thisbyte = fgetc(unpackd->fpIn)) == EOF)
   maybe_err("File appears to be truncated");
  unpackd->symbolsin[i] = (unsigned char)thisbyte;
  unpackd->symbol_size += unpackd->symbolsin[i];
 }
 accepted_bytes(bytes_in, unpackd->treelevels);
 if (unpackd->symbol_size > 256)
  maybe_errx("Bad symbol table");
 infile_newdata(unpackd->treelevels);


 unpackd->symbol_eob = unpackd->symbol = calloc(1, unpackd->symbol_size);
 if (unpackd->symbol == ((void*)0))
  maybe_err("calloc");
 unpackd->symbolsin[unpackd->treelevels]++;
 for (i = 0; i <= unpackd->treelevels; i++) {
  unpackd->tree[i] = unpackd->symbol_eob;
  for (j = 0; j < unpackd->symbolsin[i]; j++) {
   if ((thisbyte = fgetc(unpackd->fpIn)) == EOF)
    maybe_errx("Symbol table truncated");
   *unpackd->symbol_eob++ = (char)thisbyte;
  }
  infile_newdata(unpackd->symbolsin[i]);
  accepted_bytes(bytes_in, unpackd->symbolsin[i]);
 }


 unpackd->symbolsin[unpackd->treelevels]++;





 unpackd_fill_inodesin(unpackd, 0);
}
