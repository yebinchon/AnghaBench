; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_enable_msexplorer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_enable_msexplorer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@enable_msexplorer.rate0 = internal global [3 x i32] [i32 200, i32 100, i32 80], align 4
@enable_msexplorer.rate1 = internal global [3 x i32] [i32 200, i32 200, i32 80], align 4
@FALSE = common dso_local global i32 0, align 4
@PSM_EXPLORER_ID = common dso_local global i32 0, align 4
@PROBE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psm_softc*, i32)* @enable_msexplorer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_msexplorer(%struct.psm_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.psm_softc* %0, %struct.psm_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %10 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @enable_msintelli(%struct.psm_softc* %12, i32 %13)
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %34, %2
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @nitems(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @enable_msexplorer.rate1, i64 0, i64 0))
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* @enable_msexplorer.rate1, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @set_mouse_sampling_rate(i32 %20, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* @enable_msexplorer.rate1, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %25, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %3, align 4
  br label %83

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %15

37:                                               ; preds = %15
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @get_aux_id(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @PSM_EXPLORER_ID, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %3, align 4
  br label %83

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @PROBE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %51 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 5, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %55 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %49, %45
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %76, %57
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @nitems(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @enable_msexplorer.rate0, i64 0, i64 0))
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* @enable_msexplorer.rate0, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @set_mouse_sampling_rate(i32 %63, i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* @enable_msexplorer.rate0, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %68, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %79

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %58

79:                                               ; preds = %74, %58
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @get_aux_id(i32 %80)
  %82 = load i32, i32* @TRUE, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %43, %31
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @enable_msintelli(%struct.psm_softc*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @set_mouse_sampling_rate(i32, i32) #1

declare dso_local i32 @get_aux_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
