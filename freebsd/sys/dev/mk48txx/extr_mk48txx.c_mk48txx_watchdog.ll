; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mk48txx/extr_mk48txx.c_mk48txx_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mk48txx/extr_mk48txx.c_mk48txx_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mk48txx_softc = type { i32, i32, i64, i32 (i8*, i64, i32)* }

@WD_INTERVAL = common dso_local global i32 0, align 4
@WD_TO_2SEC = common dso_local global i32 0, align 4
@MK48TXX_WDOG_RB_1_16 = common dso_local global i32 0, align 4
@WD_TO_8SEC = common dso_local global i32 0, align 4
@MK48TXX_WDOG_RB_1_4 = common dso_local global i32 0, align 4
@WD_TO_250MS = common dso_local global i64 0, align 8
@WD_TO_32SEC = common dso_local global i32 0, align 4
@MK48TXX_WDOG_RB_1 = common dso_local global i32 0, align 4
@WD_TO_1SEC = common dso_local global i64 0, align 8
@MK48TXX_WDOG_RB_4 = common dso_local global i32 0, align 4
@WD_TO_4SEC = common dso_local global i64 0, align 8
@MK48TXX_WDOG_BMB_MASK = common dso_local global i32 0, align 4
@MK48TXX_WDOG_BMB_SHIFT = common dso_local global i32 0, align 4
@MK48TXX_WDOG_ENABLE_WDS = common dso_local global i32 0, align 4
@MK48TXX_WDOG_WDS = common dso_local global i32 0, align 4
@MK48TXX_WDOG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*)* @mk48txx_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mk48txx_watchdog(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mk48txx_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.mk48txx_softc* @device_get_softc(i8* %12)
  store %struct.mk48txx_softc* %13, %struct.mk48txx_softc** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @WD_INTERVAL, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sge i32 %17, 26
  br i1 %18, label %19, label %92

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = icmp sle i32 %20, 37
  br i1 %21, label %22, label %92

22:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @WD_TO_2SEC, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* @MK48TXX_WDOG_RB_1_16, align 4
  %28 = load i32, i32* %10, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %30, 26
  store i32 %31, i32* %9, align 4
  br label %69

32:                                               ; preds = %22
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @WD_TO_8SEC, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i32, i32* @MK48TXX_WDOG_RB_1_4, align 4
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %10, align 4
  %40 = load i64, i64* @WD_TO_250MS, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %9, align 4
  br label %68

45:                                               ; preds = %32
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @WD_TO_32SEC, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i32, i32* @MK48TXX_WDOG_RB_1, align 4
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i64, i64* @WD_TO_1SEC, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %9, align 4
  br label %67

58:                                               ; preds = %45
  %59 = load i32, i32* @MK48TXX_WDOG_RB_4, align 4
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %10, align 4
  %62 = load i64, i64* @WD_TO_4SEC, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %58, %49
  br label %68

68:                                               ; preds = %67, %36
  br label %69

69:                                               ; preds = %68, %26
  %70 = load i32, i32* %9, align 4
  %71 = shl i32 1, %70
  %72 = load i32, i32* @MK48TXX_WDOG_BMB_MASK, align 4
  %73 = load i32, i32* @MK48TXX_WDOG_BMB_SHIFT, align 4
  %74 = ashr i32 %72, %73
  %75 = call i32 @min(i32 %71, i32 %74)
  %76 = load i32, i32* @MK48TXX_WDOG_BMB_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %10, align 4
  %80 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %8, align 8
  %81 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @MK48TXX_WDOG_ENABLE_WDS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %69
  %87 = load i32, i32* @MK48TXX_WDOG_WDS, align 4
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %86, %69
  %91 = load i32*, i32** %6, align 8
  store i32 0, i32* %91, align 4
  br label %93

92:                                               ; preds = %19, %3
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %92, %90
  %94 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %8, align 8
  %95 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %94, i32 0, i32 1
  %96 = call i32 @mtx_lock(i32* %95)
  %97 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %8, align 8
  %98 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %97, i32 0, i32 3
  %99 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %98, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %8, align 8
  %102 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @MK48TXX_WDOG, align 8
  %105 = add nsw i64 %103, %104
  %106 = load i32, i32* %10, align 4
  %107 = call i32 %99(i8* %100, i64 %105, i32 %106)
  %108 = load %struct.mk48txx_softc*, %struct.mk48txx_softc** %8, align 8
  %109 = getelementptr inbounds %struct.mk48txx_softc, %struct.mk48txx_softc* %108, i32 0, i32 1
  %110 = call i32 @mtx_unlock(i32* %109)
  ret void
}

declare dso_local %struct.mk48txx_softc* @device_get_softc(i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
