; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_read_timeregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_read_timeregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxprtc_softc = type { i64, i32, i32, i32 }
%struct.time_regs = type { i64 }

@WAITFLAGS = common dso_local global i32 0, align 4
@TMR_TICKS_SEC = common dso_local global i64 0, align 8
@TMR_TICKS_HALFSEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nxprtc_softc*, %struct.time_regs*, i64*)* @read_timeregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_timeregs(%struct.nxprtc_softc* %0, %struct.time_regs* %1, i64* %2) #0 {
  %4 = alloca %struct.nxprtc_softc*, align 8
  %5 = alloca %struct.time_regs*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.nxprtc_softc* %0, %struct.nxprtc_softc** %4, align 8
  store %struct.time_regs* %1, %struct.time_regs** %5, align 8
  store i64* %2, i64** %6, align 8
  br label %11

11:                                               ; preds = %70, %3
  %12 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %13 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %11
  %17 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %18 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %19 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @read_reg(%struct.nxprtc_softc* %17, i32 %20, i64* %8)
  store i32 %21, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %72

24:                                               ; preds = %16
  %25 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %26 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %27 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @read_reg(%struct.nxprtc_softc* %25, i32 %28, i64* %9)
  store i32 %29, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %72

32:                                               ; preds = %24
  %33 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %34 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %35 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @read_reg(%struct.nxprtc_softc* %33, i32 %36, i64* %10)
  store i32 %37, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %72

40:                                               ; preds = %32
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %59

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %11
  %47 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %48 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %51 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.time_regs*, %struct.time_regs** %5, align 8
  %54 = load i32, i32* @WAITFLAGS, align 4
  %55 = call i32 @nxprtc_readfrom(i32 %49, i32 %52, %struct.time_regs* %53, i32 8, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %72

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %44
  %60 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %61 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.time_regs*, %struct.time_regs** %5, align 8
  %66 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp ne i64 %67, %68
  br label %70

70:                                               ; preds = %64, %59
  %71 = phi i1 [ false, %59 ], [ %69, %64 ]
  br i1 %71, label %11, label %72

72:                                               ; preds = %70, %57, %39, %31, %23
  %73 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %4, align 8
  %74 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @TMR_TICKS_SEC, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77, %72
  store i64 0, i64* %9, align 8
  br label %82

82:                                               ; preds = %81, %77
  %83 = load i64, i64* @TMR_TICKS_SEC, align 8
  %84 = load i64, i64* %9, align 8
  %85 = sub nsw i64 %83, %84
  %86 = load i64, i64* @TMR_TICKS_HALFSEC, align 8
  %87 = add nsw i64 %85, %86
  %88 = load i64, i64* @TMR_TICKS_SEC, align 8
  %89 = srem i64 %87, %88
  %90 = load i64*, i64** %6, align 8
  store i64 %89, i64* %90, align 8
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i32 @read_reg(%struct.nxprtc_softc*, i32, i64*) #1

declare dso_local i32 @nxprtc_readfrom(i32, i32, %struct.time_regs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
