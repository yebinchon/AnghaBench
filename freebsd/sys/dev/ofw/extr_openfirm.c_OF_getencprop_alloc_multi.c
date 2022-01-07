
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int phandle_t ;
typedef int pcell_t ;


 int OF_getprop_alloc_multi (int ,char const*,int,void**) ;
 int be32toh (int ) ;

ssize_t
OF_getencprop_alloc_multi(phandle_t package, const char *name, int elsz,
    void **buf)
{
 ssize_t retval;
 pcell_t *cell;
 int i;

 retval = OF_getprop_alloc_multi(package, name, elsz, buf);
 if (retval == -1)
  return (-1);

 cell = *buf;
 for (i = 0; i < retval * elsz / 4; i++)
  cell[i] = be32toh(cell[i]);

 return (retval);
}
