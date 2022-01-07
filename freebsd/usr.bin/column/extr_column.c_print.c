
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int entries ;
 int ** list ;
 int wprintf (char*,int *) ;

__attribute__((used)) static void
print(void)
{
 int cnt;
 wchar_t **lp;

 for (cnt = entries, lp = list; cnt--; ++lp)
  (void)wprintf(L"%ls\n", *lp);
}
