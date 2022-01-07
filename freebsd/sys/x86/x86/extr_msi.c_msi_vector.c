
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_intsrc {int msi_irq; } ;
struct intsrc {int dummy; } ;



__attribute__((used)) static int
msi_vector(struct intsrc *isrc)
{
 struct msi_intsrc *msi = (struct msi_intsrc *)isrc;

 return (msi->msi_irq);
}
