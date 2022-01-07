
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct text_stat {int nonprintable; int printable; int nul; int lonelf; int lonecr; int crlf; } ;


 int memset (struct text_stat*,int ,int) ;

__attribute__((used)) static void gather_stats(const char *buf, unsigned long size, struct text_stat *stats)
{
 unsigned long i;

 memset(stats, 0, sizeof(*stats));

 for (i = 0; i < size; i++) {
  unsigned char c = buf[i];
  if (c == '\r') {
   if (i+1 < size && buf[i+1] == '\n') {
    stats->crlf++;
    i++;
   } else
    stats->lonecr++;
   continue;
  }
  if (c == '\n') {
   stats->lonelf++;
   continue;
  }
  if (c == 127)

   stats->nonprintable++;
  else if (c < 32) {
   switch (c) {

   case '\b': case '\t': case '\033': case '\014':
    stats->printable++;
    break;
   case 0:
    stats->nul++;

   default:
    stats->nonprintable++;
   }
  }
  else
   stats->printable++;
 }


 if (size >= 1 && buf[size-1] == '\032')
  stats->nonprintable--;
}
