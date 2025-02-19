
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {scalar_t__ value; scalar_t__ serial; } ;



__attribute__((used)) static void
sort(struct line *a, int n)
{
 struct line *ai, *aim, w;
 int j, m = 0, k;

 if (n == 0)
  return;
 for (j = 1; j <= n; j *= 2)
  m = 2 * j - 1;
 for (m /= 2; m != 0; m /= 2) {
  k = n - m;
  for (j = 1; j <= k; j++) {
   for (ai = &a[j]; ai > a; ai -= m) {
    aim = &ai[m];
    if (aim < ai)
     break;
    if (aim->value > ai[0].value ||
        (aim->value == ai[0].value &&
     aim->serial > ai[0].serial))
     break;
    w.value = ai[0].value;
    ai[0].value = aim->value;
    aim->value = w.value;
    w.serial = ai[0].serial;
    ai[0].serial = aim->serial;
    aim->serial = w.serial;
   }
  }
 }
}
