
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int cchar_t ;


 int A_NORMAL ;
 scalar_t__ OK ;
 int p_error (char*) ;
 scalar_t__ setcchar (int *,int*,int ,int ,int *) ;

__attribute__((used)) static cchar_t *
makecchar(wchar_t in)
{
 static cchar_t cc;
 wchar_t wc[2];

 wc[0] = in;
 wc[1] = L'\0';

 if (setcchar(&cc, wc, A_NORMAL, 0, ((void*)0)) != OK)
  p_error("settchar(3) failure");

 return (&cc);
}
