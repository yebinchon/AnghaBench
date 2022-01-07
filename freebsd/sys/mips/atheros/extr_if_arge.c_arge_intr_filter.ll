; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_intr_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_intr_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arge_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@AR71XX_DMA_INTR_STATUS = common dso_local global i32 0, align 4
@AR71XX_DMA_INTR = common dso_local global i32 0, align 4
@ARGE_DBG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"int mask(filter) = %b\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"\10\08RX_BUS_ERROR\07RX_OVERFLOW\05RX_PKT_RCVD\04TX_BUS_ERROR\02TX_UNDERRUN\01TX_PKT_SENT\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"status(filter) = %b\0A\00", align 1
@DMA_INTR_ALL = common dso_local global i32 0, align 4
@FILTER_SCHEDULE_THREAD = common dso_local global i32 0, align 4
@FILTER_STRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @arge_intr_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arge_intr_filter(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.arge_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.arge_softc*
  store %struct.arge_softc* %8, %struct.arge_softc** %4, align 8
  %9 = load %struct.arge_softc*, %struct.arge_softc** %4, align 8
  %10 = load i32, i32* @AR71XX_DMA_INTR_STATUS, align 4
  %11 = call i32 @ARGE_READ(%struct.arge_softc* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.arge_softc*, %struct.arge_softc** %4, align 8
  %13 = load i32, i32* @AR71XX_DMA_INTR, align 4
  %14 = call i32 @ARGE_READ(%struct.arge_softc* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.arge_softc*, %struct.arge_softc** %4, align 8
  %16 = load i32, i32* @ARGE_DBG_INTR, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @ARGEDEBUG(%struct.arge_softc* %15, i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %17, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.arge_softc*, %struct.arge_softc** %4, align 8
  %20 = load i32, i32* @ARGE_DBG_INTR, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ARGEDEBUG(%struct.arge_softc* %19, i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %21, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @DMA_INTR_ALL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.arge_softc*, %struct.arge_softc** %4, align 8
  %30 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.arge_softc*, %struct.arge_softc** %4, align 8
  %34 = load i32, i32* @AR71XX_DMA_INTR, align 4
  %35 = call i32 @ARGE_WRITE(%struct.arge_softc* %33, i32 %34, i32 0)
  %36 = load %struct.arge_softc*, %struct.arge_softc** %4, align 8
  %37 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  store i32 %41, i32* %2, align 4
  br label %51

42:                                               ; preds = %1
  %43 = load %struct.arge_softc*, %struct.arge_softc** %4, align 8
  %44 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.arge_softc*, %struct.arge_softc** %4, align 8
  %46 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %42, %27
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @ARGE_READ(%struct.arge_softc*, i32) #1

declare dso_local i32 @ARGEDEBUG(%struct.arge_softc*, i32, i8*, i32, i8*) #1

declare dso_local i32 @ARGE_WRITE(%struct.arge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
