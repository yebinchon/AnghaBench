
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_FLAG_NO_BUFFERING ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int STD_ERROR_HANDLE ;
 int STD_INPUT_HANDLE ;
 int STD_OUTPUT_HANDLE ;
 int maybe_redirect_std_handle (char*,int ,int,int ,int ) ;

__attribute__((used)) static void maybe_redirect_std_handles(void)
{
 maybe_redirect_std_handle(L"GIT_REDIRECT_STDIN", STD_INPUT_HANDLE, 0,
      GENERIC_READ, FILE_ATTRIBUTE_NORMAL);
 maybe_redirect_std_handle(L"GIT_REDIRECT_STDOUT", STD_OUTPUT_HANDLE, 1,
      GENERIC_WRITE, FILE_ATTRIBUTE_NORMAL);
 maybe_redirect_std_handle(L"GIT_REDIRECT_STDERR", STD_ERROR_HANDLE, 2,
      GENERIC_WRITE, FILE_FLAG_NO_BUFFERING);
}
