
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct simdisk_softc {int sectors; int sbuf; } ;
typedef int XML_Parser ;


 int LIST_INIT (int *) ;
 int MAP_NOCORE ;
 int MAP_PRIVATE ;
 int O_RDONLY ;
 int PROT_READ ;
 int XML_Parse (int ,char*,int ,int) ;
 int XML_ParserCreate (int *) ;
 int XML_ParserFree (int ) ;
 int XML_SetCharacterDataHandler (int ,int ) ;
 int XML_SetElementHandler (int ,int ,int ) ;
 int XML_SetUserData (int ,struct simdisk_softc*) ;
 struct simdisk_softc* calloc (int,int) ;
 int characterData ;
 int close (int) ;
 int endElement ;
 int err (int,char const*) ;
 int errx (int,char*,int) ;
 int fstat (int,struct stat*) ;
 char* mmap (int *,int ,int ,int,int,int ) ;
 int munmap (char*,int ) ;
 int open (char const*,int ) ;
 int sbuf_new_auto () ;
 int startElement ;

__attribute__((used)) static struct simdisk_softc *
g_simdisk_xml_load(const char *file)
{
 XML_Parser parser = XML_ParserCreate(((void*)0));
 struct stat st;
 char *p;
 struct simdisk_softc *sc;
 int fd, i;

 sc = calloc(1, sizeof *sc);
 sc->sbuf = sbuf_new_auto();
 LIST_INIT(&sc->sectors);
 XML_SetUserData(parser, sc);
 XML_SetElementHandler(parser, startElement, endElement);
 XML_SetCharacterDataHandler(parser, characterData);

 fd = open(file, O_RDONLY);
 if (fd < 0)
  err(1, file);
 fstat(fd, &st);
 p = mmap(((void*)0), st.st_size, PROT_READ, MAP_NOCORE|MAP_PRIVATE, fd, 0);
 i = XML_Parse(parser, p, st.st_size, 1);
 if (i != 1)
  errx(1, "XML_Parse complains: return %d", i);
 munmap(p, st.st_size);
 close(fd);
 XML_ParserFree(parser);
 return (sc);
}
