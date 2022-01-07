
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct basl_fio {scalar_t__ fd; int f_name; int * fp; } ;


 int BHYVE_ASL_SUFFIX ;
 int MAXPATHLEN ;
 int basl_stemplate ;
 int basl_template ;
 int close (scalar_t__) ;
 int * fdopen (scalar_t__,char*) ;
 scalar_t__ mkstemp (int ) ;
 scalar_t__ mkstemps (int ,int ) ;
 int strlcpy (int ,int ,int ) ;
 int strlen (int ) ;
 int unlink (int ) ;

__attribute__((used)) static int
basl_open(struct basl_fio *bf, int suffix)
{
 int err;

 err = 0;

 if (suffix) {
  strlcpy(bf->f_name, basl_stemplate, MAXPATHLEN);
  bf->fd = mkstemps(bf->f_name, strlen(BHYVE_ASL_SUFFIX));
 } else {
  strlcpy(bf->f_name, basl_template, MAXPATHLEN);
  bf->fd = mkstemp(bf->f_name);
 }

 if (bf->fd > 0) {
  bf->fp = fdopen(bf->fd, "w+");
  if (bf->fp == ((void*)0)) {
   unlink(bf->f_name);
   close(bf->fd);
  }
 } else {
  err = 1;
 }

 return (err);
}
