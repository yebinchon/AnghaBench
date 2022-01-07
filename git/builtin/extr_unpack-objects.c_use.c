
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 scalar_t__ consumed_bytes ;
 int die (char*) ;
 int len ;
 scalar_t__ max_input_size ;
 int offset ;
 scalar_t__ signed_add_overflows (scalar_t__,int) ;

__attribute__((used)) static void use(int bytes)
{
 if (bytes > len)
  die("used more bytes than were available");
 len -= bytes;
 offset += bytes;


 if (signed_add_overflows(consumed_bytes, bytes))
  die("pack too large for current definition of off_t");
 consumed_bytes += bytes;
 if (max_input_size && consumed_bytes > max_input_size)
  die(_("pack exceeds maximum allowed size"));
}
