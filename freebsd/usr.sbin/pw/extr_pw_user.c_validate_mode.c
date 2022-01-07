
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int EX_DATAERR ;
 int _DEF_DIRMODE ;
 int errx (int ,char*,char*) ;
 int free (void*) ;
 int getmode (void*,int ) ;
 void* setmode (char*) ;

__attribute__((used)) static mode_t
validate_mode(char *mode)
{
 mode_t m;
 void *set;

 if ((set = setmode(mode)) == ((void*)0))
  errx(EX_DATAERR, "invalid directory creation mode '%s'", mode);

 m = getmode(set, _DEF_DIRMODE);
 free(set);
 return (m);
}
