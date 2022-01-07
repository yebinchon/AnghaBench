; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_check_boundary.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_check_boundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@ALC_RX_RING_SZ = common dso_local global i64 0, align 8
@ALC_RR_RING_SZ = common dso_local global i64 0, align 8
@ALC_CMB_SZ = common dso_local global i64 0, align 8
@ALC_TX_RING_SZ = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alc_softc*)* @alc_check_boundary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc_check_boundary(%struct.alc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.alc_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.alc_softc* %0, %struct.alc_softc** %3, align 8
  %8 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %9 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ALC_RX_RING_SZ, align 8
  %13 = add nsw i64 %11, %12
  store i64 %13, i64* %5, align 8
  %14 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %15 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ALC_RR_RING_SZ, align 8
  %19 = add nsw i64 %17, %18
  store i64 %19, i64* %6, align 8
  %20 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %21 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ALC_CMB_SZ, align 8
  %25 = add nsw i64 %23, %24
  store i64 %25, i64* %4, align 8
  %26 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %27 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ALC_TX_RING_SZ, align 8
  %31 = add nsw i64 %29, %30
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @ALC_ADDR_HI(i64 %32)
  %34 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %35 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @ALC_ADDR_HI(i64 %37)
  %39 = icmp ne i64 %33, %38
  br i1 %39, label %67, label %40

40:                                               ; preds = %1
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @ALC_ADDR_HI(i64 %41)
  %43 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %44 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @ALC_ADDR_HI(i64 %46)
  %48 = icmp ne i64 %42, %47
  br i1 %48, label %67, label %49

49:                                               ; preds = %40
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @ALC_ADDR_HI(i64 %50)
  %52 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %53 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @ALC_ADDR_HI(i64 %55)
  %57 = icmp ne i64 %51, %56
  br i1 %57, label %67, label %58

58:                                               ; preds = %49
  %59 = load i64, i64* %7, align 8
  %60 = call i64 @ALC_ADDR_HI(i64 %59)
  %61 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %62 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @ALC_ADDR_HI(i64 %64)
  %66 = icmp ne i64 %60, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %58, %49, %40, %1
  %68 = load i32, i32* @EFBIG, align 4
  store i32 %68, i32* %2, align 4
  br label %84

69:                                               ; preds = %58
  %70 = load i64, i64* %5, align 8
  %71 = call i64 @ALC_ADDR_HI(i64 %70)
  %72 = load i64, i64* %6, align 8
  %73 = call i64 @ALC_ADDR_HI(i64 %72)
  %74 = icmp ne i64 %71, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load i64, i64* %5, align 8
  %77 = call i64 @ALC_ADDR_HI(i64 %76)
  %78 = load i64, i64* %4, align 8
  %79 = call i64 @ALC_ADDR_HI(i64 %78)
  %80 = icmp ne i64 %77, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75, %69
  %82 = load i32, i32* @EFBIG, align 4
  store i32 %82, i32* %2, align 4
  br label %84

83:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %81, %67
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @ALC_ADDR_HI(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
