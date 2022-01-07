; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_softc = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i64 }

@HIFN_DMACSR_C_CTRL_DIS = common dso_local global i32 0, align 4
@HIFN_DMACSR_S_CTRL_DIS = common dso_local global i32 0, align 4
@HIFN_DMACSR_D_CTRL_DIS = common dso_local global i32 0, align 4
@HIFN_DMACSR_R_CTRL_DIS = common dso_local global i32 0, align 4
@HIFN_1_DMA_CSR = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hifn_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hifn_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hifn_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.hifn_softc*
  store %struct.hifn_softc* %6, %struct.hifn_softc** %3, align 8
  %7 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %8 = call i32 @HIFN_LOCK(%struct.hifn_softc* %7)
  %9 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %10 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %86

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %14 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %15 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %20 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %19, i32 0, i32 9
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %25 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %24, i32 0, i32 9
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @HIFN_DMACSR_C_CTRL_DIS, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %23, %18, %13
  %30 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %31 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %36 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %35, i32 0, i32 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %41 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %40, i32 0, i32 8
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @HIFN_DMACSR_S_CTRL_DIS, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %39, %34, %29
  %46 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %47 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %52 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %57 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %56, i32 0, i32 7
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @HIFN_DMACSR_D_CTRL_DIS, align 4
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %55, %50, %45
  %62 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %63 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %68 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %73 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %72, i32 0, i32 6
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @HIFN_DMACSR_R_CTRL_DIS, align 4
  %75 = load i32, i32* %4, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %71, %66, %61
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %82 = load i32, i32* @HIFN_1_DMA_CSR, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @WRITE_REG_1(%struct.hifn_softc* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %77
  br label %91

86:                                               ; preds = %1
  %87 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %88 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, -1
  store i64 %90, i64* %88, align 8
  br label %91

91:                                               ; preds = %86, %85
  %92 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %93 = call i32 @HIFN_UNLOCK(%struct.hifn_softc* %92)
  %94 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %95 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %94, i32 0, i32 5
  %96 = load i32, i32* @hz, align 4
  %97 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %98 = call i32 @callout_reset(i32* %95, i32 %96, void (i8*)* @hifn_tick, %struct.hifn_softc* %97)
  ret void
}

declare dso_local i32 @HIFN_LOCK(%struct.hifn_softc*) #1

declare dso_local i32 @WRITE_REG_1(%struct.hifn_softc*, i32, i32) #1

declare dso_local i32 @HIFN_UNLOCK(%struct.hifn_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.hifn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
