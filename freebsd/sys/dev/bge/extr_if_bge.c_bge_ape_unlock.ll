; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_ape_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_ape_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32, i64, i32 }

@BGE_MFW_ON_APE = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5761 = common dso_local global i64 0, align 8
@BGE_APE_LOCK_GRANT = common dso_local global i32 0, align 4
@BGE_APE_PER_LOCK_GRANT = common dso_local global i32 0, align 4
@BGE_APE_LOCK_GRANT_DRIVER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*, i32)* @bge_ape_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_ape_unlock(%struct.bge_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %9 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @BGE_MFW_ON_APE, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %85

15:                                               ; preds = %2
  %16 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %17 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BGE_ASICREV_BCM5761, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @BGE_APE_LOCK_GRANT, align 4
  store i32 %22, i32* %6, align 4
  br label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @BGE_APE_PER_LOCK_GRANT, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 4, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %77 [
    i32 134, label %29
    i32 133, label %49
    i32 132, label %62
    i32 131, label %75
    i32 130, label %75
    i32 129, label %75
    i32 128, label %75
  ]

29:                                               ; preds = %25
  %30 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %31 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BGE_ASICREV_BCM5761, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %85

36:                                               ; preds = %29
  %37 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %38 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @BGE_APE_LOCK_GRANT_DRIVER0, align 4
  store i32 %42, i32* %5, align 4
  br label %48

43:                                               ; preds = %36
  %44 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %45 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 1, %46
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %41
  br label %78

49:                                               ; preds = %25
  %50 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %51 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @BGE_APE_LOCK_GRANT_DRIVER0, align 4
  store i32 %55, i32* %5, align 4
  br label %61

56:                                               ; preds = %49
  %57 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %58 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = shl i32 1, %59
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %56, %54
  br label %78

62:                                               ; preds = %25
  %63 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %64 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @BGE_APE_LOCK_GRANT_DRIVER0, align 4
  store i32 %68, i32* %5, align 4
  br label %74

69:                                               ; preds = %62
  %70 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %71 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = shl i32 1, %72
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %69, %67
  br label %78

75:                                               ; preds = %25, %25, %25, %25
  %76 = load i32, i32* @BGE_APE_LOCK_GRANT_DRIVER0, align 4
  store i32 %76, i32* %5, align 4
  br label %78

77:                                               ; preds = %25
  br label %85

78:                                               ; preds = %75, %74, %61, %48
  %79 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @APE_WRITE_4(%struct.bge_softc* %79, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %77, %35, %14
  ret void
}

declare dso_local i32 @APE_WRITE_4(%struct.bge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
