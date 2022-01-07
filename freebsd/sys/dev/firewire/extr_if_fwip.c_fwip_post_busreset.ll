; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwip.c_fwip_post_busreset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwip.c_fwip_post_busreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwip_softc = type { %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.crom_chunk*, %struct.crom_src* }
%struct.crom_chunk = type { i32 }
%struct.crom_src = type { i32 }

@CROM_UDIR = common dso_local global i32 0, align 4
@CSRKEY_SPEC = common dso_local global i32 0, align 4
@CSRVAL_IETF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"IANA\00", align 1
@CSRKEY_VER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"IPv4\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"IPv6\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fwip_post_busreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwip_post_busreset(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fwip_softc*, align 8
  %4 = alloca %struct.crom_src*, align 8
  %5 = alloca %struct.crom_chunk*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.fwip_softc*
  store %struct.fwip_softc* %7, %struct.fwip_softc** %3, align 8
  %8 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %9 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %8, i32 0, i32 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.crom_src*, %struct.crom_src** %12, align 8
  store %struct.crom_src* %13, %struct.crom_src** %4, align 8
  %14 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %15 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %14, i32 0, i32 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.crom_chunk*, %struct.crom_chunk** %18, align 8
  store %struct.crom_chunk* %19, %struct.crom_chunk** %5, align 8
  %20 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %21 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %20, i32 0, i32 6
  %22 = call i32 @bzero(i32* %21, i32 4)
  %23 = load %struct.crom_src*, %struct.crom_src** %4, align 8
  %24 = load %struct.crom_chunk*, %struct.crom_chunk** %5, align 8
  %25 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %26 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %25, i32 0, i32 6
  %27 = load i32, i32* @CROM_UDIR, align 4
  %28 = call i32 @crom_add_chunk(%struct.crom_src* %23, %struct.crom_chunk* %24, i32* %26, i32 %27)
  %29 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %30 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %29, i32 0, i32 6
  %31 = load i32, i32* @CSRKEY_SPEC, align 4
  %32 = load i32, i32* @CSRVAL_IETF, align 4
  %33 = call i32 @crom_add_entry(i32* %30, i32 %31, i32 %32)
  %34 = load %struct.crom_src*, %struct.crom_src** %4, align 8
  %35 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %36 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %35, i32 0, i32 6
  %37 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %38 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %37, i32 0, i32 7
  %39 = call i32 @crom_add_simple_text(%struct.crom_src* %34, i32* %36, i32* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %41 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %40, i32 0, i32 6
  %42 = load i32, i32* @CSRKEY_VER, align 4
  %43 = call i32 @crom_add_entry(i32* %41, i32 %42, i32 1)
  %44 = load %struct.crom_src*, %struct.crom_src** %4, align 8
  %45 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %46 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %45, i32 0, i32 6
  %47 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %48 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %47, i32 0, i32 5
  %49 = call i32 @crom_add_simple_text(%struct.crom_src* %44, i32* %46, i32* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %51 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %50, i32 0, i32 3
  %52 = call i32 @bzero(i32* %51, i32 4)
  %53 = load %struct.crom_src*, %struct.crom_src** %4, align 8
  %54 = load %struct.crom_chunk*, %struct.crom_chunk** %5, align 8
  %55 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %56 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %55, i32 0, i32 3
  %57 = load i32, i32* @CROM_UDIR, align 4
  %58 = call i32 @crom_add_chunk(%struct.crom_src* %53, %struct.crom_chunk* %54, i32* %56, i32 %57)
  %59 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %60 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %59, i32 0, i32 3
  %61 = load i32, i32* @CSRKEY_SPEC, align 4
  %62 = load i32, i32* @CSRVAL_IETF, align 4
  %63 = call i32 @crom_add_entry(i32* %60, i32 %61, i32 %62)
  %64 = load %struct.crom_src*, %struct.crom_src** %4, align 8
  %65 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %66 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %65, i32 0, i32 3
  %67 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %68 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %67, i32 0, i32 4
  %69 = call i32 @crom_add_simple_text(%struct.crom_src* %64, i32* %66, i32* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %71 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %70, i32 0, i32 3
  %72 = load i32, i32* @CSRKEY_VER, align 4
  %73 = call i32 @crom_add_entry(i32* %71, i32 %72, i32 2)
  %74 = load %struct.crom_src*, %struct.crom_src** %4, align 8
  %75 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %76 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %75, i32 0, i32 3
  %77 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %78 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %77, i32 0, i32 2
  %79 = call i32 @crom_add_simple_text(%struct.crom_src* %74, i32* %76, i32* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %81 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %84 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %87 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @firewire_busreset(i32 %89)
  ret void
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @crom_add_chunk(%struct.crom_src*, %struct.crom_chunk*, i32*, i32) #1

declare dso_local i32 @crom_add_entry(i32*, i32, i32) #1

declare dso_local i32 @crom_add_simple_text(%struct.crom_src*, i32*, i32*, i8*) #1

declare dso_local i32 @firewire_busreset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
