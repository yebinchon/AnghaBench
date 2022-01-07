
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprot_t ;


 int pgprot_writecombine (int ) ;

pgprot_t pgprot_wc(pgprot_t _prot)
{
 return pgprot_writecombine(_prot);
}
