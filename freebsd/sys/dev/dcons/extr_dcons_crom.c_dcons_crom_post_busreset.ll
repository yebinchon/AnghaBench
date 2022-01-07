; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dcons/extr_dcons_crom.c_dcons_crom_post_busreset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dcons/extr_dcons_crom.c_dcons_crom_post_busreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcons_crom_softc = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.crom_chunk*, %struct.crom_src* }
%struct.crom_chunk = type { i32 }
%struct.crom_src = type { i32 }

@CROM_UDIR = common dso_local global i32 0, align 4
@CSRKEY_SPEC = common dso_local global i32 0, align 4
@CSRVAL_VENDOR_PRIVATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@CSRKEY_VER = common dso_local global i32 0, align 4
@DCONS_CSR_VAL_VER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"dcons\00", align 1
@DCONS_CSR_KEY_HI = common dso_local global i32 0, align 4
@dcons_paddr = common dso_local global i32 0, align 4
@DCONS_CSR_KEY_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dcons_crom_post_busreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcons_crom_post_busreset(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dcons_crom_softc*, align 8
  %4 = alloca %struct.crom_src*, align 8
  %5 = alloca %struct.crom_chunk*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.dcons_crom_softc*
  store %struct.dcons_crom_softc* %7, %struct.dcons_crom_softc** %3, align 8
  %8 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %3, align 8
  %9 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load %struct.crom_src*, %struct.crom_src** %12, align 8
  store %struct.crom_src* %13, %struct.crom_src** %4, align 8
  %14 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %3, align 8
  %15 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.crom_chunk*, %struct.crom_chunk** %18, align 8
  store %struct.crom_chunk* %19, %struct.crom_chunk** %5, align 8
  %20 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %3, align 8
  %21 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %20, i32 0, i32 0
  %22 = call i32 @bzero(i32* %21, i32 4)
  %23 = load %struct.crom_src*, %struct.crom_src** %4, align 8
  %24 = load %struct.crom_chunk*, %struct.crom_chunk** %5, align 8
  %25 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %3, align 8
  %26 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %25, i32 0, i32 0
  %27 = load i32, i32* @CROM_UDIR, align 4
  %28 = call i32 @crom_add_chunk(%struct.crom_src* %23, %struct.crom_chunk* %24, i32* %26, i32 %27)
  %29 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %3, align 8
  %30 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %29, i32 0, i32 0
  %31 = load i32, i32* @CSRKEY_SPEC, align 4
  %32 = load i32, i32* @CSRVAL_VENDOR_PRIVATE, align 4
  %33 = call i32 @crom_add_entry(i32* %30, i32 %31, i32 %32)
  %34 = load %struct.crom_src*, %struct.crom_src** %4, align 8
  %35 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %3, align 8
  %36 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %35, i32 0, i32 0
  %37 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %3, align 8
  %38 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %37, i32 0, i32 2
  %39 = call i32 @crom_add_simple_text(%struct.crom_src* %34, i32* %36, i32* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %3, align 8
  %41 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %40, i32 0, i32 0
  %42 = load i32, i32* @CSRKEY_VER, align 4
  %43 = load i32, i32* @DCONS_CSR_VAL_VER, align 4
  %44 = call i32 @crom_add_entry(i32* %41, i32 %42, i32 %43)
  %45 = load %struct.crom_src*, %struct.crom_src** %4, align 8
  %46 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %3, align 8
  %47 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %46, i32 0, i32 0
  %48 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %3, align 8
  %49 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %48, i32 0, i32 1
  %50 = call i32 @crom_add_simple_text(%struct.crom_src* %45, i32* %47, i32* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %3, align 8
  %52 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %51, i32 0, i32 0
  %53 = load i32, i32* @DCONS_CSR_KEY_HI, align 4
  %54 = load i32, i32* @dcons_paddr, align 4
  %55 = call i32 @ADDR_HI(i32 %54)
  %56 = call i32 @crom_add_entry(i32* %52, i32 %53, i32 %55)
  %57 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %3, align 8
  %58 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %57, i32 0, i32 0
  %59 = load i32, i32* @DCONS_CSR_KEY_LO, align 4
  %60 = load i32, i32* @dcons_paddr, align 4
  %61 = call i32 @ADDR_LO(i32 %60)
  %62 = call i32 @crom_add_entry(i32* %58, i32 %59, i32 %61)
  %63 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %3, align 8
  %64 = call i32 @dcons_crom_expose_idt(%struct.dcons_crom_softc* %63)
  ret void
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @crom_add_chunk(%struct.crom_src*, %struct.crom_chunk*, i32*, i32) #1

declare dso_local i32 @crom_add_entry(i32*, i32, i32) #1

declare dso_local i32 @crom_add_simple_text(%struct.crom_src*, i32*, i32*, i8*) #1

declare dso_local i32 @ADDR_HI(i32) #1

declare dso_local i32 @ADDR_LO(i32) #1

declare dso_local i32 @dcons_crom_expose_idt(%struct.dcons_crom_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
