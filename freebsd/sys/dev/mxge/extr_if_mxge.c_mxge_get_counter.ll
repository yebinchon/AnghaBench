; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_get_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mxge_softc = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ifnet*, i32)* @mxge_get_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mxge_get_counter(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mxge_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = call %struct.mxge_softc* @if_getsoftc(%struct.ifnet* %11)
  store %struct.mxge_softc* %12, %struct.mxge_softc** %6, align 8
  store i64 0, i64* %7, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %86 [
    i32 133, label %14
    i32 129, label %38
    i32 131, label %62
  ]

14:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %33, %14
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.mxge_softc*, %struct.mxge_softc** %6, align 8
  %18 = getelementptr inbounds %struct.mxge_softc, %struct.mxge_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load %struct.mxge_softc*, %struct.mxge_softc** %6, align 8
  %23 = getelementptr inbounds %struct.mxge_softc, %struct.mxge_softc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %7, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %15

36:                                               ; preds = %15
  %37 = load i64, i64* %7, align 8
  store i64 %37, i64* %3, align 8
  br label %90

38:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %57, %38
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.mxge_softc*, %struct.mxge_softc** %6, align 8
  %42 = getelementptr inbounds %struct.mxge_softc, %struct.mxge_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load %struct.mxge_softc*, %struct.mxge_softc** %6, align 8
  %47 = getelementptr inbounds %struct.mxge_softc, %struct.mxge_softc* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %7, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %7, align 8
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %39

60:                                               ; preds = %39
  %61 = load i64, i64* %7, align 8
  store i64 %61, i64* %3, align 8
  br label %90

62:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %81, %62
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.mxge_softc*, %struct.mxge_softc** %6, align 8
  %66 = getelementptr inbounds %struct.mxge_softc, %struct.mxge_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = load %struct.mxge_softc*, %struct.mxge_softc** %6, align 8
  %71 = getelementptr inbounds %struct.mxge_softc, %struct.mxge_softc* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %7, align 8
  %80 = add nsw i64 %79, %78
  store i64 %80, i64* %7, align 8
  br label %81

81:                                               ; preds = %69
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %63

84:                                               ; preds = %63
  %85 = load i64, i64* %7, align 8
  store i64 %85, i64* %3, align 8
  br label %90

86:                                               ; preds = %2
  %87 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i64 @if_get_counter_default(%struct.ifnet* %87, i32 %88)
  store i64 %89, i64* %3, align 8
  br label %90

90:                                               ; preds = %86, %84, %60, %36
  %91 = load i64, i64* %3, align 8
  ret i64 %91
}

declare dso_local %struct.mxge_softc* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i64 @if_get_counter_default(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
