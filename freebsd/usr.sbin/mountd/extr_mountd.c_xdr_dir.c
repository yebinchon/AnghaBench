
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XDR ;


 int MNTPATHLEN ;
 int xdr_string (int *,char**,int ) ;

__attribute__((used)) static int
xdr_dir(XDR *xdrsp, char *dirp)
{
 return (xdr_string(xdrsp, &dirp, MNTPATHLEN));
}
