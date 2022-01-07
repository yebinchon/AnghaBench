; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dcons/extr_dcons_crom.c_dcons_crom_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dcons/extr_dcons_crom.c_dcons_crom_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.dcons_crom_softc = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__*, i8*, i32*, i32 }
%struct.TYPE_5__ = type { i32 }

@dcons_conf = common dso_local global %struct.TYPE_6__* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@dcons_crom_post_busreset = common dso_local global i64 0, align 8
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@dmamap_cb = common dso_local global i32 0, align 4
@dcons_poll = common dso_local global i32 0, align 4
@dcons_crom_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dcons_crom_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcons_crom_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dcons_crom_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dcons_conf, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %2, align 4
  br label %95

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @device_get_softc(i32 %13)
  %15 = inttoptr i64 %14 to %struct.dcons_crom_softc*
  store %struct.dcons_crom_softc* %15, %struct.dcons_crom_softc** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.TYPE_5__* @device_get_ivars(i32 %16)
  %18 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %4, align 8
  %19 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %20, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %4, align 8
  %23 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 8
  %25 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %4, align 8
  %26 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = load i64, i64* @dcons_crom_post_busreset, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %4, align 8
  %31 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i8* %29, i8** %32, align 8
  %33 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %4, align 8
  %34 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %40 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dcons_conf, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %45 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %46 = load i32, i32* @busdma_lock_mutex, align 4
  %47 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %4, align 8
  %48 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %47, i32 0, i32 2
  %49 = call i32 @bus_dma_tag_create(i32 %38, i32 4, i32 0, i32 %39, i32 %40, i32* null, i32* null, i32 %43, i32 1, i32 %44, i32 %45, i32 %46, i32* @Giant, i32* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %12
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %95

54:                                               ; preds = %12
  %55 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %4, align 8
  %56 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %59 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %4, align 8
  %60 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %59, i32 0, i32 1
  %61 = call i32 @bus_dmamap_create(i32 %57, i32 %58, i32* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %95

66:                                               ; preds = %54
  %67 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %4, align 8
  %68 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %4, align 8
  %71 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dcons_conf, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = bitcast i32* %75 to i8*
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dcons_conf, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @dmamap_cb, align 4
  %81 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %4, align 8
  %82 = call i32 @bus_dmamap_load(i32 %69, i32 %72, i8* %76, i32 %79, i32 %80, %struct.dcons_crom_softc* %81, i32 0)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %66
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %95

87:                                               ; preds = %66
  %88 = load i32, i32* @dcons_poll, align 4
  %89 = load i32, i32* @dcons_crom_poll, align 4
  %90 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %4, align 8
  %91 = bitcast %struct.dcons_crom_softc* %90 to i8*
  %92 = call i32 @EVENTHANDLER_REGISTER(i32 %88, i32 %89, i8* %91, i32 0)
  %93 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %4, align 8
  %94 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %87, %85, %64, %52, %10
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local %struct.TYPE_5__* @device_get_ivars(i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i8*, i32, i32, %struct.dcons_crom_softc*, i32) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
