
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int uncompressed_size; } ;
typedef TYPE_1__ unpack_descriptor_t ;
typedef int off_t ;


 int dup (int) ;
 int maybe_err (char*) ;
 int unpack_decode (TYPE_1__*,int *) ;
 int unpack_descriptor_fini (TYPE_1__*) ;
 int unpack_parse_header (int,int,char*,size_t,int *,TYPE_1__*) ;

__attribute__((used)) static off_t
unpack(int in, int out, char *pre, size_t prelen, off_t *bytes_in)
{
 unpack_descriptor_t unpackd;

 in = dup(in);
 if (in == -1)
  maybe_err("dup");
 out = dup(out);
 if (out == -1)
  maybe_err("dup");

 unpack_parse_header(in, out, pre, prelen, bytes_in, &unpackd);
 unpack_decode(&unpackd, bytes_in);
 unpack_descriptor_fini(&unpackd);


 return (unpackd.uncompressed_size);
}
