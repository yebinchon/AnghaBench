
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct dumperinfo {size_t blocksize; TYPE_1__* kdcomp; int blockbuf; } ;
typedef int off_t ;
struct TYPE_2__ {size_t kdc_resid; } ;


 int EAGAIN ;
 int _dump_append (struct dumperinfo*,void*,int ,size_t) ;
 int memmove (int ,int *,size_t) ;
 size_t rounddown (size_t,size_t) ;

__attribute__((used)) static int
kerneldumpcomp_write_cb(void *base, size_t length, off_t offset, void *arg)
{
 struct dumperinfo *di;
 size_t resid, rlength;
 int error;

 di = arg;

 if (length % di->blocksize != 0) {






  rlength = rounddown(length, di->blocksize);
  if (rlength != 0) {
   error = _dump_append(di, base, 0, rlength);
   if (error != 0)
    return (error);
  }
  resid = length - rlength;
  memmove(di->blockbuf, (uint8_t *)base + rlength, resid);
  di->kdcomp->kdc_resid = resid;
  return (EAGAIN);
 }
 return (_dump_append(di, base, 0, length));
}
