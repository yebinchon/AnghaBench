
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err ;
 int fputs (char*,int ) ;

void
usage(void)
{
 (void)fputs(
  "usage: pr [+page] [-col] [-adFfmprt] [-e[ch][gap]] [-h header]\n",
  err);
 (void)fputs(
  "          [-i[ch][gap]] [-l line] [-n[ch][width]] [-o offset]\n",err);
 (void)fputs(
  "          [-L locale] [-s[ch]] [-w width] [-] [file ...]\n", err);
}
