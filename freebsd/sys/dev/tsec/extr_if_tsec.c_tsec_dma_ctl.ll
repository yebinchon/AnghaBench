; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_dma_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_dma_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { i32 }

@TSEC_REG_DMACTRL = common dso_local global i32 0, align 4
@TSEC_DMACTRL_GRS = common dso_local global i32 0, align 4
@TSEC_DMACTRL_GTS = common dso_local global i32 0, align 4
@TSEC_DMACTRL_TDSEN = common dso_local global i32 0, align 4
@TSEC_DMACTRL_TBDSEN = common dso_local global i32 0, align 4
@DMACTRL_WWR = common dso_local global i32 0, align 4
@DMACTRL_WOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"tsec_dma_ctl(): unknown state value: %d\0A\00", align 1
@TSEC_READ_RETRY = common dso_local global i32 0, align 4
@TSEC_REG_IEVENT = common dso_local global i32 0, align 4
@TSEC_IEVENT_GRSC = common dso_local global i32 0, align 4
@TSEC_IEVENT_GTSC = common dso_local global i32 0, align 4
@TSEC_READ_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"tsec_dma_ctl(): timeout!\0A\00", align 1
@TSEC_REG_TSTAT = common dso_local global i32 0, align 4
@TSEC_TSTAT_THLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsec_softc*, i32)* @tsec_dma_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsec_dma_ctl(%struct.tsec_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.tsec_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tsec_softc* %0, %struct.tsec_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %9 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %12 = load i32, i32* @TSEC_REG_DMACTRL, align 4
  %13 = call i32 @TSEC_READ(%struct.tsec_softc* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %38 [
    i32 0, label %15
    i32 1000, label %22
    i32 1, label %22
  ]

15:                                               ; preds = %2
  %16 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  call void @tsec_dma_ctl(%struct.tsec_softc* %16, i32 1000)
  %17 = load i32, i32* @TSEC_DMACTRL_GRS, align 4
  %18 = load i32, i32* @TSEC_DMACTRL_GTS, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %42

22:                                               ; preds = %2, %2
  %23 = load i32, i32* @TSEC_DMACTRL_TDSEN, align 4
  %24 = load i32, i32* @TSEC_DMACTRL_TBDSEN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @DMACTRL_WWR, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @DMACTRL_WOP, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @TSEC_DMACTRL_GRS, align 4
  %33 = load i32, i32* @TSEC_DMACTRL_GTS, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %42

38:                                               ; preds = %2
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i32, i8*, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %22, %15
  %43 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %44 = load i32, i32* @TSEC_REG_DMACTRL, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @TSEC_WRITE(%struct.tsec_softc* %43, i32 %44, i32 %45)
  %47 = load i32, i32* %4, align 4
  switch i32 %47, label %81 [
    i32 0, label %48
    i32 1, label %76
  ]

48:                                               ; preds = %42
  %49 = load i32, i32* @TSEC_READ_RETRY, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %66, %48
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %56 = load i32, i32* @TSEC_REG_IEVENT, align 4
  %57 = call i32 @TSEC_READ(%struct.tsec_softc* %55, i32 %56)
  %58 = load i32, i32* @TSEC_IEVENT_GRSC, align 4
  %59 = load i32, i32* @TSEC_IEVENT_GTSC, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br label %64

64:                                               ; preds = %54, %50
  %65 = phi i1 [ false, %50 ], [ %63, %54 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i32, i32* @TSEC_READ_DELAY, align 4
  %68 = call i32 @DELAY(i32 %67)
  br label %50

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  %74 = call i32 (i32, i8*, ...) @device_printf(i32 %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %69
  br label %81

76:                                               ; preds = %42
  %77 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %78 = load i32, i32* @TSEC_REG_TSTAT, align 4
  %79 = load i32, i32* @TSEC_TSTAT_THLT, align 4
  %80 = call i32 @TSEC_WRITE(%struct.tsec_softc* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %42, %75
  ret void
}

declare dso_local i32 @TSEC_READ(%struct.tsec_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @TSEC_WRITE(%struct.tsec_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
