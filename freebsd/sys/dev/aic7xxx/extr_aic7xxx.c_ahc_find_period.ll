; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_find_period.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_find_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_syncrate = type { i64, i64, i64, i32* }
%struct.ahc_softc = type { i32 }

@AHC_ULTRA2 = common dso_local global i32 0, align 4
@SXFR_ULTRA2 = common dso_local global i64 0, align 8
@SXFR = common dso_local global i64 0, align 8
@ahc_syncrates = common dso_local global %struct.ahc_syncrate* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ahc_find_period(%struct.ahc_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ahc_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ahc_syncrate*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %10 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AHC_ULTRA2, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i64, i64* @SXFR_ULTRA2, align 8
  %17 = load i64, i64* %6, align 8
  %18 = and i64 %17, %16
  store i64 %18, i64* %6, align 8
  br label %23

19:                                               ; preds = %3
  %20 = load i64, i64* @SXFR, align 8
  %21 = load i64, i64* %6, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** @ahc_syncrates, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %24, i64 %25
  store %struct.ahc_syncrate* %26, %struct.ahc_syncrate** %8, align 8
  br label %27

27:                                               ; preds = %72, %23
  %28 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %8, align 8
  %29 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %75

32:                                               ; preds = %27
  %33 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %34 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AHC_ULTRA2, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %32
  %40 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %8, align 8
  %41 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %75

45:                                               ; preds = %39
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %8, align 8
  %48 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SXFR_ULTRA2, align 8
  %51 = and i64 %49, %50
  %52 = icmp eq i64 %46, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %8, align 8
  %55 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %4, align 8
  br label %76

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57
  br label %72

59:                                               ; preds = %32
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %8, align 8
  %62 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SXFR, align 8
  %65 = and i64 %63, %64
  %66 = icmp eq i64 %60, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %8, align 8
  %69 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %4, align 8
  br label %76

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71, %58
  %73 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %8, align 8
  %74 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %73, i32 1
  store %struct.ahc_syncrate* %74, %struct.ahc_syncrate** %8, align 8
  br label %27

75:                                               ; preds = %44, %27
  store i64 0, i64* %4, align 8
  br label %76

76:                                               ; preds = %75, %67, %53
  %77 = load i64, i64* %4, align 8
  ret i64 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
