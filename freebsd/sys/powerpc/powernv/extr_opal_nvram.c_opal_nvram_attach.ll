; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_nvram.c_opal_nvram_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_nvram.c_opal_nvram_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_nvram_softc = type { %struct.TYPE_2__*, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.opal_nvram_softc* }

@.str = private unnamed_addr constant [7 x i8] c"#bytes\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@NVRAM_BUFSIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"No memory for buffer.\0A\00", align 1
@opal_nvram_cdevsw = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"nvram\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @opal_nvram_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_nvram_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_nvram_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @ofw_bus_get_node(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.opal_nvram_softc* @device_get_softc(i32 %9)
  store %struct.opal_nvram_softc* %10, %struct.opal_nvram_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.opal_nvram_softc*, %struct.opal_nvram_softc** %4, align 8
  %13 = getelementptr inbounds %struct.opal_nvram_softc, %struct.opal_nvram_softc* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.opal_nvram_softc*, %struct.opal_nvram_softc** %4, align 8
  %16 = getelementptr inbounds %struct.opal_nvram_softc, %struct.opal_nvram_softc* %15, i32 0, i32 3
  %17 = call i32 @OF_getencprop(i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %16, i32 4)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %55

22:                                               ; preds = %1
  %23 = load i32, i32* @NVRAM_BUFSIZE, align 4
  %24 = load i32, i32* @M_DEVBUF, align 4
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = call i32* @contigmalloc(i32 %23, i32 %24, i32 %25, i32 0, i32 %26, i32 %27, i32 0)
  %29 = load %struct.opal_nvram_softc*, %struct.opal_nvram_softc** %4, align 8
  %30 = getelementptr inbounds %struct.opal_nvram_softc, %struct.opal_nvram_softc* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load %struct.opal_nvram_softc*, %struct.opal_nvram_softc** %4, align 8
  %32 = getelementptr inbounds %struct.opal_nvram_softc, %struct.opal_nvram_softc* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %2, align 4
  br label %55

39:                                               ; preds = %22
  %40 = load %struct.opal_nvram_softc*, %struct.opal_nvram_softc** %4, align 8
  %41 = getelementptr inbounds %struct.opal_nvram_softc, %struct.opal_nvram_softc* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = ptrtoint i32* %42 to i32
  %44 = call i32 @pmap_kextract(i32 %43)
  %45 = load %struct.opal_nvram_softc*, %struct.opal_nvram_softc** %4, align 8
  %46 = getelementptr inbounds %struct.opal_nvram_softc, %struct.opal_nvram_softc* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = call %struct.TYPE_2__* @make_dev(i32* @opal_nvram_cdevsw, i32 0, i32 0, i32 0, i32 384, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.opal_nvram_softc*, %struct.opal_nvram_softc** %4, align 8
  %49 = getelementptr inbounds %struct.opal_nvram_softc, %struct.opal_nvram_softc* %48, i32 0, i32 0
  store %struct.TYPE_2__* %47, %struct.TYPE_2__** %49, align 8
  %50 = load %struct.opal_nvram_softc*, %struct.opal_nvram_softc** %4, align 8
  %51 = load %struct.opal_nvram_softc*, %struct.opal_nvram_softc** %4, align 8
  %52 = getelementptr inbounds %struct.opal_nvram_softc, %struct.opal_nvram_softc* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store %struct.opal_nvram_softc* %50, %struct.opal_nvram_softc** %54, align 8
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %39, %35, %20
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local %struct.opal_nvram_softc* @device_get_softc(i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32* @contigmalloc(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pmap_kextract(i32) #1

declare dso_local %struct.TYPE_2__* @make_dev(i32*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
