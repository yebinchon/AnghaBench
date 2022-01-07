; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/geom/MdLoad/extr_MdLoad.c_g_simdisk_xml_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/geom/MdLoad/extr_MdLoad.c_g_simdisk_xml_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simdisk_softc = type { i32, i32 }
%struct.stat = type { i32 }

@startElement = common dso_local global i32 0, align 4
@endElement = common dso_local global i32 0, align 4
@characterData = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_NOCORE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"XML_Parse complains: return %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.simdisk_softc* (i8*)* @g_simdisk_xml_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.simdisk_softc* @g_simdisk_xml_load(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.simdisk_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = call i32 @XML_ParserCreate(i32* null)
  store i32 %9, i32* %3, align 4
  %10 = call %struct.simdisk_softc* @calloc(i32 1, i32 8)
  store %struct.simdisk_softc* %10, %struct.simdisk_softc** %6, align 8
  %11 = call i32 (...) @sbuf_new_auto()
  %12 = load %struct.simdisk_softc*, %struct.simdisk_softc** %6, align 8
  %13 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.simdisk_softc*, %struct.simdisk_softc** %6, align 8
  %15 = getelementptr inbounds %struct.simdisk_softc, %struct.simdisk_softc* %14, i32 0, i32 0
  %16 = call i32 @LIST_INIT(i32* %15)
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.simdisk_softc*, %struct.simdisk_softc** %6, align 8
  %19 = call i32 @XML_SetUserData(i32 %17, %struct.simdisk_softc* %18)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @startElement, align 4
  %22 = load i32, i32* @endElement, align 4
  %23 = call i32 @XML_SetElementHandler(i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @characterData, align 4
  %26 = call i32 @XML_SetCharacterDataHandler(i32 %24, i32 %25)
  %27 = load i8*, i8** %2, align 8
  %28 = load i32, i32* @O_RDONLY, align 4
  %29 = call i32 @open(i8* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @err(i32 1, i8* %33)
  br label %35

35:                                               ; preds = %32, %1
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @fstat(i32 %36, %struct.stat* %4)
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PROT_READ, align 4
  %41 = load i32, i32* @MAP_NOCORE, align 4
  %42 = load i32, i32* @MAP_PRIVATE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = call i8* @mmap(i32* null, i32 %39, i32 %40, i32 %43, i32 %44, i32 0)
  store i8* %45, i8** %5, align 8
  %46 = load i32, i32* %3, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @XML_Parse(i32 %46, i8* %47, i32 %49, i32 1)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %56

53:                                               ; preds = %35
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %53, %35
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @munmap(i8* %57, i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @close(i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @XML_ParserFree(i32 %63)
  %65 = load %struct.simdisk_softc*, %struct.simdisk_softc** %6, align 8
  ret %struct.simdisk_softc* %65
}

declare dso_local i32 @XML_ParserCreate(i32*) #1

declare dso_local %struct.simdisk_softc* @calloc(i32, i32) #1

declare dso_local i32 @sbuf_new_auto(...) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @XML_SetUserData(i32, %struct.simdisk_softc*) #1

declare dso_local i32 @XML_SetElementHandler(i32, i32, i32) #1

declare dso_local i32 @XML_SetCharacterDataHandler(i32, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XML_Parse(i32, i8*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @XML_ParserFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
