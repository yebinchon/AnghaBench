
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 scalar_t__ ALL ;
 scalar_t__ DUP ;
 scalar_t__ FIRST ;
 int MIN (int,int) ;
 scalar_t__ WAIT ;
 int * _argv ;
 scalar_t__ address ;
 scalar_t__ bcmp (int *,int *,int) ;
 int blocksize ;
 int bzero (char*,int) ;
 int * calloc (int,int) ;
 scalar_t__ eaddress ;
 int err (int,int *) ;
 int errx (int,char*) ;
 scalar_t__ ferror (int ) ;
 int fread (char*,int,int,int ) ;
 int length ;
 int next (char**) ;
 scalar_t__ odmode ;
 int printf (char*) ;
 scalar_t__ skip ;
 int stdin ;
 scalar_t__ vflag ;
 int warn (char*,int ) ;

u_char *
get(void)
{
 static int ateof = 1;
 static u_char *curp, *savp;
 int n;
 int need, nread;
 int valid_save = 0;
 u_char *tmpp;

 if (!curp) {
  if ((curp = calloc(1, blocksize)) == ((void*)0))
   err(1, ((void*)0));
  if ((savp = calloc(1, blocksize)) == ((void*)0))
   err(1, ((void*)0));
 } else {
  tmpp = curp;
  curp = savp;
  savp = tmpp;
  address += blocksize;
  valid_save = 1;
 }
 for (need = blocksize, nread = 0;;) {





  if (!length || (ateof && !next((char **)((void*)0)))) {
   if (odmode && address < skip)
    errx(1, "cannot skip past end of input");
   if (need == blocksize)
    return((u_char *)((void*)0));




   if (vflag != ALL &&
       valid_save &&
       bcmp(curp, savp, nread) == 0) {
    if (vflag != DUP)
     (void)printf("*\n");
    return((u_char *)((void*)0));
   }
   bzero((char *)curp + nread, need);
   eaddress = address + nread;
   return(curp);
  }
  n = fread((char *)curp + nread, sizeof(u_char),
      length == -1 ? need : MIN(length, need), stdin);
  if (!n) {
   if (ferror(stdin))
    warn("%s", _argv[-1]);
   ateof = 1;
   continue;
  }
  ateof = 0;
  if (length != -1)
   length -= n;
  if (!(need -= n)) {




   if (vflag == ALL || vflag == FIRST ||
       valid_save == 0 ||
       bcmp(curp, savp, blocksize) != 0) {
    if (vflag == DUP || vflag == FIRST)
     vflag = WAIT;
    return(curp);
   }
   if (vflag == WAIT)
    (void)printf("*\n");
   vflag = DUP;
   address += blocksize;
   need = blocksize;
   nread = 0;
  }
  else
   nread += n;
 }
}
