
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LINENUM ;


 scalar_t__ canonicalize ;
 char* ifetch (scalar_t__,int) ;
 scalar_t__ input_lines ;
 scalar_t__ last_line_missing_eol ;
 unsigned short pch_line_len (scalar_t__) ;
 scalar_t__ pch_ptrn_lines () ;
 char* pfetch (scalar_t__) ;
 int similar (char const*,char const*,unsigned short) ;
 scalar_t__ strnNE (char const*,char const*,unsigned short) ;

__attribute__((used)) static bool
patch_match(LINENUM base, LINENUM offset, LINENUM fuzz)
{
 LINENUM pline = 1 + fuzz;
 LINENUM iline;
 LINENUM pat_lines = pch_ptrn_lines() - fuzz;
 const char *ilineptr;
 const char *plineptr;
 unsigned short plinelen;


 if (pline > pat_lines)
  return 0;
 for (iline = base + offset + fuzz; pline <= pat_lines; pline++, iline++) {
  ilineptr = ifetch(iline, offset >= 0);
  if (ilineptr == ((void*)0))
   return 0;
  plineptr = pfetch(pline);
  plinelen = pch_line_len(pline);
  if (canonicalize) {
   if (!similar(ilineptr, plineptr, plinelen))
    return 0;
  } else if (strnNE(ilineptr, plineptr, plinelen))
   return 0;
  if (iline == input_lines) {






   if (last_line_missing_eol) {
    if (plineptr[plinelen - 1] == '\n')
     return 0;
   } else {
    if (plineptr[plinelen - 1] != '\n')
     return 0;
   }
  }
 }
 return 1;
}
