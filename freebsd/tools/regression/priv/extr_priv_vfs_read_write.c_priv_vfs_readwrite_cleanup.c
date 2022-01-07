
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int fpath_none ;
 scalar_t__ fpath_none_initialized ;
 int fpath_read ;
 scalar_t__ fpath_read_initialized ;
 int fpath_readwrite ;
 scalar_t__ fpath_readwrite_initialized ;
 int fpath_write ;
 scalar_t__ fpath_write_initialized ;
 int unlink (int ) ;

void
priv_vfs_readwrite_cleanup(int asroot, int injail, struct test *test)
{

 if (fpath_none_initialized) {
  (void)unlink(fpath_none);
  fpath_none_initialized = 0;
 }
 if (fpath_read_initialized) {
  (void)unlink(fpath_read);
  fpath_read_initialized = 0;
 }
 if (fpath_write_initialized) {
  (void)unlink(fpath_write);
  fpath_write_initialized = 0;
 }
 if (fpath_readwrite_initialized) {
  (void)unlink(fpath_readwrite);
  fpath_readwrite_initialized = 0;
 }
}
