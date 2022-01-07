
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int linker_file_t ;
typedef int linker_ctf_t ;


 int LINKER_CTF_GET (int ,int *) ;

int
linker_ctf_get(linker_file_t file, linker_ctf_t *lc)
{
 return (LINKER_CTF_GET(file, lc));
}
