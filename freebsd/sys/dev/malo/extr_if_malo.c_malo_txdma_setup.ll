; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_txdma_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_txdma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_softc = type { i32, i32 }
%struct.malo_txq = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.malo_txdesc*, %struct.malo_txbuf* }
%struct.malo_txdesc = type { i32 }
%struct.malo_txbuf = type { i32, i32, %struct.malo_txdesc* }

@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@malo_txbuf = common dso_local global i32 0, align 4
@MALO_TXDESC = common dso_local global i32 0, align 4
@M_MALODEV = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"malloc of %u tx buffers failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"unable to create dmamap for tx buffer %u, error %u\0A\00", align 1
@bf_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.malo_softc*, %struct.malo_txq*)* @malo_txdma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malo_txdma_setup(%struct.malo_softc* %0, %struct.malo_txq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.malo_softc*, align 8
  %5 = alloca %struct.malo_txq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.malo_txbuf*, align 8
  %10 = alloca %struct.malo_txdesc*, align 8
  store %struct.malo_softc* %0, %struct.malo_softc** %4, align 8
  store %struct.malo_txq* %1, %struct.malo_txq** %5, align 8
  %11 = load %struct.malo_softc*, %struct.malo_softc** %4, align 8
  %12 = load %struct.malo_txq*, %struct.malo_txq** %5, align 8
  %13 = getelementptr inbounds %struct.malo_txq, %struct.malo_txq* %12, i32 0, i32 2
  %14 = load i32, i32* @malo_txbuf, align 4
  %15 = load i32, i32* @MALO_TXDESC, align 4
  %16 = call i32 @malo_desc_setup(%struct.malo_softc* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %13, i32 %14, i32 16, i32 %15, i32 4)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %106

21:                                               ; preds = %2
  %22 = load i32, i32* @malo_txbuf, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 16
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @M_MALODEV, align 4
  %28 = load i32, i32* @M_NOWAIT, align 4
  %29 = load i32, i32* @M_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call %struct.malo_txbuf* @malloc(i32 %26, i32 %27, i32 %30)
  store %struct.malo_txbuf* %31, %struct.malo_txbuf** %9, align 8
  %32 = load %struct.malo_txbuf*, %struct.malo_txbuf** %9, align 8
  %33 = icmp eq %struct.malo_txbuf* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %21
  %35 = load %struct.malo_softc*, %struct.malo_softc** %4, align 8
  %36 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @malo_txbuf, align 4
  %39 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %3, align 4
  br label %106

41:                                               ; preds = %21
  %42 = load %struct.malo_txbuf*, %struct.malo_txbuf** %9, align 8
  %43 = load %struct.malo_txq*, %struct.malo_txq** %5, align 8
  %44 = getelementptr inbounds %struct.malo_txq, %struct.malo_txq* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store %struct.malo_txbuf* %42, %struct.malo_txbuf** %45, align 8
  %46 = load %struct.malo_txq*, %struct.malo_txq** %5, align 8
  %47 = getelementptr inbounds %struct.malo_txq, %struct.malo_txq* %46, i32 0, i32 1
  %48 = call i32 @STAILQ_INIT(i32* %47)
  %49 = load %struct.malo_txq*, %struct.malo_txq** %5, align 8
  %50 = getelementptr inbounds %struct.malo_txq, %struct.malo_txq* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.malo_txq*, %struct.malo_txq** %5, align 8
  %52 = getelementptr inbounds %struct.malo_txq, %struct.malo_txq* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.malo_txdesc*, %struct.malo_txdesc** %53, align 8
  store %struct.malo_txdesc* %54, %struct.malo_txdesc** %10, align 8
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %96, %41
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @malo_txbuf, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %105

59:                                               ; preds = %55
  %60 = load %struct.malo_txdesc*, %struct.malo_txdesc** %10, align 8
  %61 = load %struct.malo_txbuf*, %struct.malo_txbuf** %9, align 8
  %62 = getelementptr inbounds %struct.malo_txbuf, %struct.malo_txbuf* %61, i32 0, i32 2
  store %struct.malo_txdesc* %60, %struct.malo_txdesc** %62, align 8
  %63 = load %struct.malo_txq*, %struct.malo_txq** %5, align 8
  %64 = getelementptr inbounds %struct.malo_txq, %struct.malo_txq* %63, i32 0, i32 2
  %65 = load %struct.malo_txdesc*, %struct.malo_txdesc** %10, align 8
  %66 = call i32 @DS2PHYS(%struct.TYPE_3__* %64, %struct.malo_txdesc* %65)
  %67 = load %struct.malo_txbuf*, %struct.malo_txbuf** %9, align 8
  %68 = getelementptr inbounds %struct.malo_txbuf, %struct.malo_txbuf* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.malo_softc*, %struct.malo_softc** %4, align 8
  %70 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %73 = load %struct.malo_txbuf*, %struct.malo_txbuf** %9, align 8
  %74 = getelementptr inbounds %struct.malo_txbuf, %struct.malo_txbuf* %73, i32 0, i32 0
  %75 = call i32 @bus_dmamap_create(i32 %71, i32 %72, i32* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %59
  %79 = load %struct.malo_softc*, %struct.malo_softc** %4, align 8
  %80 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %106

86:                                               ; preds = %59
  %87 = load %struct.malo_txq*, %struct.malo_txq** %5, align 8
  %88 = getelementptr inbounds %struct.malo_txq, %struct.malo_txq* %87, i32 0, i32 1
  %89 = load %struct.malo_txbuf*, %struct.malo_txbuf** %9, align 8
  %90 = load i32, i32* @bf_list, align 4
  %91 = call i32 @STAILQ_INSERT_TAIL(i32* %88, %struct.malo_txbuf* %89, i32 %90)
  %92 = load %struct.malo_txq*, %struct.malo_txq** %5, align 8
  %93 = getelementptr inbounds %struct.malo_txq, %struct.malo_txq* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %86
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  %99 = load %struct.malo_txbuf*, %struct.malo_txbuf** %9, align 8
  %100 = getelementptr inbounds %struct.malo_txbuf, %struct.malo_txbuf* %99, i32 1
  store %struct.malo_txbuf* %100, %struct.malo_txbuf** %9, align 8
  %101 = load i32, i32* @MALO_TXDESC, align 4
  %102 = load %struct.malo_txdesc*, %struct.malo_txdesc** %10, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds %struct.malo_txdesc, %struct.malo_txdesc* %102, i64 %103
  store %struct.malo_txdesc* %104, %struct.malo_txdesc** %10, align 8
  br label %55

105:                                              ; preds = %55
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %78, %34, %19
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @malo_desc_setup(%struct.malo_softc*, i8*, %struct.TYPE_3__*, i32, i32, i32, i32) #1

declare dso_local %struct.malo_txbuf* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @DS2PHYS(%struct.TYPE_3__*, %struct.malo_txdesc*) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.malo_txbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
