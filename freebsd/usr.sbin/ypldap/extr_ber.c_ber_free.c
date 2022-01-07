
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber {int br_wbuf; } ;


 int free (int ) ;

void
ber_free(struct ber *b)
{
 free(b->br_wbuf);
}
