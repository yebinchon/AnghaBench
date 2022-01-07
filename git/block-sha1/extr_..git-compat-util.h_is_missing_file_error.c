
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int ENOTDIR ;

__attribute__((used)) static inline int is_missing_file_error(int errno_)
{
 return (errno_ == ENOENT || errno_ == ENOTDIR);
}
