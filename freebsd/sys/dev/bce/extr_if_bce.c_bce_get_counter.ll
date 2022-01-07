; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_get_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.bce_softc = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@BCE_CHIP_NUM_5706 = common dso_local global i32 0, align 4
@BCE_CHIP_ID_5708_A0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ifnet*, i32)* @bce_get_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bce_get_counter(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bce_softc*, align 8
  %7 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %9 = call %struct.bce_softc* @if_getsoftc(%struct.ifnet* %8)
  store %struct.bce_softc* %9, %struct.bce_softc** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %84 [
    i32 130, label %11
    i32 129, label %15
    i32 128, label %51
  ]

11:                                               ; preds = %2
  %12 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %13 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %12, i32 0, i32 14
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %3, align 8
  br label %88

15:                                               ; preds = %2
  %16 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %17 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %16, i32 0, i32 13
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %20 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %19, i32 0, i32 12
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %24 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %23, i32 0, i32 11
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %28 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %27, i32 0, i32 10
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %32 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %31, i32 0, i32 9
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %36 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %35, i32 0, i32 8
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %40 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %44 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %48 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  store i64 %50, i64* %3, align 8
  br label %88

51:                                               ; preds = %2
  %52 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %53 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %56 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %60 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %64 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  store i64 %66, i64* %7, align 8
  %67 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %68 = call i32 @BCE_CHIP_NUM(%struct.bce_softc* %67)
  %69 = load i32, i32* @BCE_CHIP_NUM_5706, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %82, label %71

71:                                               ; preds = %51
  %72 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %73 = call i32 @BCE_CHIP_ID(%struct.bce_softc* %72)
  %74 = load i32, i32* @BCE_CHIP_ID_5708_A0, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %78 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* %7, align 8
  br label %82

82:                                               ; preds = %76, %71, %51
  %83 = load i64, i64* %7, align 8
  store i64 %83, i64* %3, align 8
  br label %88

84:                                               ; preds = %2
  %85 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i64 @if_get_counter_default(%struct.ifnet* %85, i32 %86)
  store i64 %87, i64* %3, align 8
  br label %88

88:                                               ; preds = %84, %82, %15, %11
  %89 = load i64, i64* %3, align 8
  ret i64 %89
}

declare dso_local %struct.bce_softc* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @BCE_CHIP_NUM(%struct.bce_softc*) #1

declare dso_local i32 @BCE_CHIP_ID(%struct.bce_softc*) #1

declare dso_local i64 @if_get_counter_default(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
