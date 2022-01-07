; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_txdma_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_txdma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_softc = type { i32, i32 }
%struct.mwl_txq = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mwl_txdesc*, %struct.mwl_txbuf* }
%struct.mwl_txdesc = type { i32 }
%struct.mwl_txbuf = type { i32, i32, %struct.mwl_txdesc* }

@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@mwl_txbuf = common dso_local global i32 0, align 4
@MWL_TXDESC = common dso_local global i32 0, align 4
@M_MWLDEV = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"malloc of %u tx buffers failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"unable to create dmamap for tx buffer %u, error %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwl_softc*, %struct.mwl_txq*)* @mwl_txdma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_txdma_setup(%struct.mwl_softc* %0, %struct.mwl_txq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwl_softc*, align 8
  %5 = alloca %struct.mwl_txq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mwl_txbuf*, align 8
  %10 = alloca %struct.mwl_txdesc*, align 8
  store %struct.mwl_softc* %0, %struct.mwl_softc** %4, align 8
  store %struct.mwl_txq* %1, %struct.mwl_txq** %5, align 8
  %11 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %12 = load %struct.mwl_txq*, %struct.mwl_txq** %5, align 8
  %13 = getelementptr inbounds %struct.mwl_txq, %struct.mwl_txq* %12, i32 0, i32 0
  %14 = load i32, i32* @mwl_txbuf, align 4
  %15 = load i32, i32* @MWL_TXDESC, align 4
  %16 = call i32 @mwl_desc_setup(%struct.mwl_softc* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %13, i32 %14, i32 16, i32 %15, i32 4)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %95

21:                                               ; preds = %2
  %22 = load i32, i32* @mwl_txbuf, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 16
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @M_MWLDEV, align 4
  %28 = load i32, i32* @M_NOWAIT, align 4
  %29 = load i32, i32* @M_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call %struct.mwl_txbuf* @malloc(i32 %26, i32 %27, i32 %30)
  store %struct.mwl_txbuf* %31, %struct.mwl_txbuf** %9, align 8
  %32 = load %struct.mwl_txbuf*, %struct.mwl_txbuf** %9, align 8
  %33 = icmp eq %struct.mwl_txbuf* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %21
  %35 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %36 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @mwl_txbuf, align 4
  %39 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %3, align 4
  br label %95

41:                                               ; preds = %21
  %42 = load %struct.mwl_txbuf*, %struct.mwl_txbuf** %9, align 8
  %43 = load %struct.mwl_txq*, %struct.mwl_txq** %5, align 8
  %44 = getelementptr inbounds %struct.mwl_txq, %struct.mwl_txq* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store %struct.mwl_txbuf* %42, %struct.mwl_txbuf** %45, align 8
  %46 = load %struct.mwl_txq*, %struct.mwl_txq** %5, align 8
  %47 = getelementptr inbounds %struct.mwl_txq, %struct.mwl_txq* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.mwl_txdesc*, %struct.mwl_txdesc** %48, align 8
  store %struct.mwl_txdesc* %49, %struct.mwl_txdesc** %10, align 8
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %82, %41
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @mwl_txbuf, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %91

54:                                               ; preds = %50
  %55 = load %struct.mwl_txdesc*, %struct.mwl_txdesc** %10, align 8
  %56 = load %struct.mwl_txbuf*, %struct.mwl_txbuf** %9, align 8
  %57 = getelementptr inbounds %struct.mwl_txbuf, %struct.mwl_txbuf* %56, i32 0, i32 2
  store %struct.mwl_txdesc* %55, %struct.mwl_txdesc** %57, align 8
  %58 = load %struct.mwl_txq*, %struct.mwl_txq** %5, align 8
  %59 = getelementptr inbounds %struct.mwl_txq, %struct.mwl_txq* %58, i32 0, i32 0
  %60 = load %struct.mwl_txdesc*, %struct.mwl_txdesc** %10, align 8
  %61 = call i32 @DS2PHYS(%struct.TYPE_3__* %59, %struct.mwl_txdesc* %60)
  %62 = load %struct.mwl_txbuf*, %struct.mwl_txbuf** %9, align 8
  %63 = getelementptr inbounds %struct.mwl_txbuf, %struct.mwl_txbuf* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %65 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %68 = load %struct.mwl_txbuf*, %struct.mwl_txbuf** %9, align 8
  %69 = getelementptr inbounds %struct.mwl_txbuf, %struct.mwl_txbuf* %68, i32 0, i32 0
  %70 = call i32 @bus_dmamap_create(i32 %66, i32 %67, i32* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %54
  %74 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %75 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %76, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %95

81:                                               ; preds = %54
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  %85 = load %struct.mwl_txbuf*, %struct.mwl_txbuf** %9, align 8
  %86 = getelementptr inbounds %struct.mwl_txbuf, %struct.mwl_txbuf* %85, i32 1
  store %struct.mwl_txbuf* %86, %struct.mwl_txbuf** %9, align 8
  %87 = load i32, i32* @MWL_TXDESC, align 4
  %88 = load %struct.mwl_txdesc*, %struct.mwl_txdesc** %10, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds %struct.mwl_txdesc, %struct.mwl_txdesc* %88, i64 %89
  store %struct.mwl_txdesc* %90, %struct.mwl_txdesc** %10, align 8
  br label %50

91:                                               ; preds = %50
  %92 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %93 = load %struct.mwl_txq*, %struct.mwl_txq** %5, align 8
  %94 = call i32 @mwl_txq_reset(%struct.mwl_softc* %92, %struct.mwl_txq* %93)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %91, %73, %34, %19
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @mwl_desc_setup(%struct.mwl_softc*, i8*, %struct.TYPE_3__*, i32, i32, i32, i32) #1

declare dso_local %struct.mwl_txbuf* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @DS2PHYS(%struct.TYPE_3__*, %struct.mwl_txdesc*) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @mwl_txq_reset(%struct.mwl_softc*, %struct.mwl_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
