
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_io {int dummy; } ;
typedef int buf ;
typedef int btxt_parse_state ;
typedef int bhnd_nvram_type ;


 int BHND_NVRAM_TYPE_STRING ;
 int BHND_NV_ASSERT (int,char*) ;
 int BHND_NV_LOG (char*,char const*,int) ;






 int ENOENT ;
 int ENXIO ;
 int bhnd_nv_isspace (char) ;
 size_t bhnd_nv_ummin (int,size_t) ;
 size_t bhnd_nvram_io_getsize (struct bhnd_nvram_io*) ;
 int bhnd_nvram_io_read (struct bhnd_nvram_io*,size_t,char*,size_t) ;
 int bhnd_nvram_value_coerce (char*,size_t,int ,void*,size_t*,int ) ;
 char* memchr (char*,char,size_t) ;
 int memmove (char*,char*,size_t) ;
 size_t strlen (char const*) ;
 int strncmp (char const*,char*,size_t) ;

__attribute__((used)) static int
bhnd_nvram_btxt_getvar_direct(struct bhnd_nvram_io *io, const char *name,
    void *outp, size_t *olen, bhnd_nvram_type otype)
{
 char buf[512];
 btxt_parse_state pstate;
 size_t limit, offset;
 size_t buflen, bufpos;
 size_t namelen, namepos;
 size_t vlen;
 int error;

 limit = bhnd_nvram_io_getsize(io);
 offset = 0;


 pstate = 131;
 buflen = 0;
 bufpos = 0;
 namelen = strlen(name);
 namepos = 0;
 vlen = 0;

 while ((offset - bufpos) < limit) {
  BHND_NV_ASSERT(bufpos <= buflen,
      ("buf position invalid (%zu > %zu)", bufpos, buflen));
  BHND_NV_ASSERT(buflen <= sizeof(buf),
      ("buf length invalid (%zu > %zu", buflen, sizeof(buf)));


  if (buflen - bufpos == 0) {
   BHND_NV_ASSERT(offset < limit, ("offset overrun"));

   buflen = bhnd_nv_ummin(sizeof(buf), limit - offset);
   bufpos = 0;

   error = bhnd_nvram_io_read(io, offset, buf, buflen);
   if (error)
    return (error);

   offset += buflen;
  }

  switch (pstate) {
  case 131:
   BHND_NV_ASSERT(bufpos < buflen, ("empty buffer!"));


   namepos = 0;


   while (bufpos < buflen && bhnd_nv_isspace(buf[bufpos]))
   {
    bufpos++;
   }

   if (bufpos == buflen) {

    pstate = 131;
   } else if (bufpos < buflen && buf[bufpos] == '#') {

    pstate = 130;
   } else {

    pstate = 133;
   }


   break;

  case 133: {
   size_t navail, nleft;

   nleft = namelen - namepos;
   navail = bhnd_nv_ummin(buflen - bufpos, nleft);

   if (strncmp(name+namepos, buf+bufpos, navail) == 0) {

    namepos += navail;
    bufpos += navail;

    if (namepos == namelen) {


     pstate = 132;
    } else {

     pstate = 133;
    }
   } else {


    pstate = 130;
   }

   break;
  }

  case 132:
   BHND_NV_ASSERT(bufpos < buflen, ("empty buffer!"));

   if (buf[bufpos] == '=') {


    bufpos++;
    pstate = 128;
   } else {


    pstate = 130;
   }

   break;

  case 130: {
   const char *p;


   p = memchr(buf+bufpos, '\n', buflen - bufpos);
   if (p == ((void*)0))
    p = memchr(buf+bufpos, '\r', buflen - bufpos);

   if (p != ((void*)0)) {


    pstate = 131;
    bufpos = (p - buf);
   } else {



    pstate = 130;
    bufpos = buflen;
   }

   break;
  }

  case 128: {
   const char *p;


   p = memchr(buf+bufpos, '\n', buflen - bufpos);
   if (p == ((void*)0))
    p = memchr(buf+bufpos, '\r', buflen - bufpos);

   if (p != ((void*)0)) {

    vlen = p - &buf[bufpos];
    pstate = 129;

   } else if (p == ((void*)0) && offset == limit) {


    vlen = buflen - bufpos;
    pstate = 129;

   } else if (p == ((void*)0) && bufpos > 0) {
    size_t nread;



    memmove(buf, buf+bufpos, buflen - bufpos);
    buflen = bufpos;
    bufpos = 0;



    nread = bhnd_nv_ummin(sizeof(buf) - buflen,
        limit - offset);

    error = bhnd_nvram_io_read(io, offset,
        buf+buflen, nread);
    if (error)
     return (error);

    offset += nread;
    buflen += nread;
   } else {

    BHND_NV_LOG("cannot parse value for '%s' "
        "(exceeds %zu byte limit)\n", name,
        sizeof(buf));

    return (ENXIO);
   }

   break;
  }

  case 129:
   BHND_NV_ASSERT(vlen <= buflen, ("value buf overrun"));


   while (vlen > 0 && bhnd_nv_isspace(buf[bufpos+vlen-1]))
    vlen--;


   return (bhnd_nvram_value_coerce(buf+bufpos, vlen,
       BHND_NVRAM_TYPE_STRING, outp, olen, otype));
  }
 }


 return (ENOENT);
}
