; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_storvsc_init_requests.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_storvsc_init_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storvsc_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hv_storvsc_request = type { i32, %struct.storvsc_softc* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@STORVSC_DATA_SIZE_MAX = common dso_local global i32 0, align 4
@STORVSC_DATA_SEGCNT_MAX = common dso_local global i32 0, align 4
@STORVSC_DATA_SEGSZ_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to create storvsc dma tag\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to allocate storvsc data dmamap\0A\00", align 1
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @storvsc_init_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storvsc_init_requests(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.storvsc_softc*, align 8
  %5 = alloca %struct.hv_storvsc_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.storvsc_softc* @device_get_softc(i32 %8)
  store %struct.storvsc_softc* %9, %struct.storvsc_softc** %4, align 8
  %10 = load %struct.storvsc_softc*, %struct.storvsc_softc** %4, align 8
  %11 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %10, i32 0, i32 1
  %12 = call i32 @LIST_INIT(i32* %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @bus_get_dma_tag(i32 %13)
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %17 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %18 = load i32, i32* @STORVSC_DATA_SIZE_MAX, align 4
  %19 = load i32, i32* @STORVSC_DATA_SEGCNT_MAX, align 4
  %20 = load i32, i32* @STORVSC_DATA_SEGSZ_MAX, align 4
  %21 = load %struct.storvsc_softc*, %struct.storvsc_softc** %4, align 8
  %22 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %21, i32 0, i32 0
  %23 = call i32 @bus_dma_tag_create(i32 %14, i32 1, i32 %15, i32 %16, i32 %17, i32* null, i32* null, i32 %18, i32 %19, i32 %20, i32 0, i32* null, i32* null, i32* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %91

30:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %65, %30
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.storvsc_softc*, %struct.storvsc_softc** %4, align 8
  %34 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %32, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %31
  %40 = load i32, i32* @M_DEVBUF, align 4
  %41 = load i32, i32* @M_WAITOK, align 4
  %42 = load i32, i32* @M_ZERO, align 4
  %43 = or i32 %41, %42
  %44 = call %struct.hv_storvsc_request* @malloc(i32 16, i32 %40, i32 %43)
  store %struct.hv_storvsc_request* %44, %struct.hv_storvsc_request** %5, align 8
  %45 = load %struct.storvsc_softc*, %struct.storvsc_softc** %4, align 8
  %46 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %47 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %46, i32 0, i32 1
  store %struct.storvsc_softc* %45, %struct.storvsc_softc** %47, align 8
  %48 = load %struct.storvsc_softc*, %struct.storvsc_softc** %4, align 8
  %49 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %52 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %51, i32 0, i32 0
  %53 = call i32 @bus_dmamap_create(i32 %50, i32 0, i32* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %39
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %69

59:                                               ; preds = %39
  %60 = load %struct.storvsc_softc*, %struct.storvsc_softc** %4, align 8
  %61 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %60, i32 0, i32 1
  %62 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %63 = load i32, i32* @link, align 4
  %64 = call i32 @LIST_INSERT_HEAD(i32* %61, %struct.hv_storvsc_request* %62, i32 %63)
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %31

68:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %91

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %75, %69
  %71 = load %struct.storvsc_softc*, %struct.storvsc_softc** %4, align 8
  %72 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %71, i32 0, i32 1
  %73 = call %struct.hv_storvsc_request* @LIST_FIRST(i32* %72)
  store %struct.hv_storvsc_request* %73, %struct.hv_storvsc_request** %5, align 8
  %74 = icmp ne %struct.hv_storvsc_request* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %70
  %76 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %77 = load i32, i32* @link, align 4
  %78 = call i32 @LIST_REMOVE(%struct.hv_storvsc_request* %76, i32 %77)
  %79 = load %struct.storvsc_softc*, %struct.storvsc_softc** %4, align 8
  %80 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %83 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @bus_dmamap_destroy(i32 %81, i32 %84)
  %86 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %87 = load i32, i32* @M_DEVBUF, align 4
  %88 = call i32 @free(%struct.hv_storvsc_request* %86, i32 %87)
  br label %70

89:                                               ; preds = %70
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %68, %26
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.storvsc_softc* @device_get_softc(i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.hv_storvsc_request* @malloc(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.hv_storvsc_request*, i32) #1

declare dso_local %struct.hv_storvsc_request* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.hv_storvsc_request*, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @free(%struct.hv_storvsc_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
