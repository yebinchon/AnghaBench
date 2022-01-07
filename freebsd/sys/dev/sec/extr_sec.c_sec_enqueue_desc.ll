; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_enqueue_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_enqueue_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_softc = type { i64, i32 }
%struct.sec_desc = type { i32 }

@SEC_MAX_FIFO_LEVEL = common dso_local global i64 0, align 8
@controller = common dso_local global i32 0, align 4
@SEC_CHANNELS = common dso_local global i32 0, align 4
@SEC_CHAN_CSR2_FFLVL_S = common dso_local global i64 0, align 8
@SEC_CHAN_CSR2_FFLVL_M = common dso_local global i64 0, align 8
@SEC_CHAN_CSR3_FFLVL_S = common dso_local global i64 0, align 8
@SEC_CHAN_CSR3_FFLVL_M = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sec_softc*, %struct.sec_desc*, i32)* @sec_enqueue_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_enqueue_desc(%struct.sec_softc* %0, %struct.sec_desc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sec_softc*, align 8
  %6 = alloca %struct.sec_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sec_softc* %0, %struct.sec_softc** %5, align 8
  store %struct.sec_desc* %1, %struct.sec_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @SEC_MAX_FIFO_LEVEL, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.sec_softc*, %struct.sec_softc** %5, align 8
  %13 = load i32, i32* @controller, align 4
  %14 = call i32 @SEC_LOCK_ASSERT(%struct.sec_softc* %12, i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %36, %17
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @SEC_CHANNELS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load %struct.sec_softc*, %struct.sec_softc** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @SEC_CHAN_CSR(i32 %24)
  %26 = call i64 @SEC_READ(%struct.sec_softc* %23, i32 %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.sec_softc*, %struct.sec_softc** %5, align 8
  %29 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = and i64 %27, %30
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %7, align 4
  br label %39

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %18

39:                                               ; preds = %33, %18
  br label %40

40:                                               ; preds = %39, %3
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 -1, i32* %4, align 4
  br label %78

44:                                               ; preds = %40
  %45 = load %struct.sec_softc*, %struct.sec_softc** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @SEC_CHAN_CSR(i32 %46)
  %48 = call i64 @SEC_READ(%struct.sec_softc* %45, i32 %47)
  store i64 %48, i64* %9, align 8
  %49 = load %struct.sec_softc*, %struct.sec_softc** %5, align 8
  %50 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %64 [
    i32 2, label %52
    i32 3, label %58
  ]

52:                                               ; preds = %44
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @SEC_CHAN_CSR2_FFLVL_S, align 8
  %55 = ashr i64 %53, %54
  %56 = load i64, i64* @SEC_CHAN_CSR2_FFLVL_M, align 8
  %57 = and i64 %55, %56
  store i64 %57, i64* %8, align 8
  br label %64

58:                                               ; preds = %44
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @SEC_CHAN_CSR3_FFLVL_S, align 8
  %61 = ashr i64 %59, %60
  %62 = load i64, i64* @SEC_CHAN_CSR3_FFLVL_M, align 8
  %63 = and i64 %61, %62
  store i64 %63, i64* %8, align 8
  br label %64

64:                                               ; preds = %44, %58, %52
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @SEC_MAX_FIFO_LEVEL, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 -1, i32* %4, align 4
  br label %78

69:                                               ; preds = %64
  %70 = load %struct.sec_softc*, %struct.sec_softc** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @SEC_CHAN_FF(i32 %71)
  %73 = load %struct.sec_desc*, %struct.sec_desc** %6, align 8
  %74 = getelementptr inbounds %struct.sec_desc, %struct.sec_desc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @SEC_WRITE(%struct.sec_softc* %70, i32 %72, i32 %75)
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %69, %68, %43
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @SEC_LOCK_ASSERT(%struct.sec_softc*, i32) #1

declare dso_local i64 @SEC_READ(%struct.sec_softc*, i32) #1

declare dso_local i32 @SEC_CHAN_CSR(i32) #1

declare dso_local i32 @SEC_WRITE(%struct.sec_softc*, i32, i32) #1

declare dso_local i32 @SEC_CHAN_FF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
