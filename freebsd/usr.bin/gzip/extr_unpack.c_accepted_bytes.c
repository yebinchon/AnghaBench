
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;



__attribute__((used)) static void
accepted_bytes(off_t *bytes_in, off_t newbytes)
{

 if (bytes_in != ((void*)0))
  (*bytes_in) += newbytes;
}
