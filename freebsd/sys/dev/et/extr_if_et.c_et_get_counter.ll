; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_get_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.et_softc = type { %struct.et_hw_stats }
%struct.et_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ifnet*, i32)* @et_get_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @et_get_counter(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.et_softc*, align 8
  %7 = alloca %struct.et_hw_stats*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %9 = call %struct.et_softc* @if_getsoftc(%struct.ifnet* %8)
  store %struct.et_softc* %9, %struct.et_softc** %6, align 8
  %10 = load %struct.et_softc*, %struct.et_softc** %6, align 8
  %11 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %10, i32 0, i32 0
  store %struct.et_hw_stats* %11, %struct.et_hw_stats** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %77 [
    i32 128, label %13
    i32 132, label %17
    i32 129, label %21
    i32 130, label %41
    i32 131, label %45
  ]

13:                                               ; preds = %2
  %14 = load %struct.et_hw_stats*, %struct.et_hw_stats** %7, align 8
  %15 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %14, i32 0, i32 15
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %3, align 8
  br label %81

17:                                               ; preds = %2
  %18 = load %struct.et_hw_stats*, %struct.et_hw_stats** %7, align 8
  %19 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %18, i32 0, i32 14
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %3, align 8
  br label %81

21:                                               ; preds = %2
  %22 = load %struct.et_hw_stats*, %struct.et_hw_stats** %7, align 8
  %23 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %22, i32 0, i32 13
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.et_hw_stats*, %struct.et_hw_stats** %7, align 8
  %26 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %25, i32 0, i32 12
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load %struct.et_hw_stats*, %struct.et_hw_stats** %7, align 8
  %30 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %29, i32 0, i32 11
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.et_hw_stats*, %struct.et_hw_stats** %7, align 8
  %34 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %33, i32 0, i32 10
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load %struct.et_hw_stats*, %struct.et_hw_stats** %7, align 8
  %38 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %37, i32 0, i32 9
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  store i64 %40, i64* %3, align 8
  br label %81

41:                                               ; preds = %2
  %42 = load %struct.et_hw_stats*, %struct.et_hw_stats** %7, align 8
  %43 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %42, i32 0, i32 8
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %3, align 8
  br label %81

45:                                               ; preds = %2
  %46 = load %struct.et_hw_stats*, %struct.et_hw_stats** %7, align 8
  %47 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.et_hw_stats*, %struct.et_hw_stats** %7, align 8
  %50 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = load %struct.et_hw_stats*, %struct.et_hw_stats** %7, align 8
  %54 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load %struct.et_hw_stats*, %struct.et_hw_stats** %7, align 8
  %58 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = load %struct.et_hw_stats*, %struct.et_hw_stats** %7, align 8
  %62 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = load %struct.et_hw_stats*, %struct.et_hw_stats** %7, align 8
  %66 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.et_hw_stats*, %struct.et_hw_stats** %7, align 8
  %70 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load %struct.et_hw_stats*, %struct.et_hw_stats** %7, align 8
  %74 = getelementptr inbounds %struct.et_hw_stats, %struct.et_hw_stats* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  store i64 %76, i64* %3, align 8
  br label %81

77:                                               ; preds = %2
  %78 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i64 @if_get_counter_default(%struct.ifnet* %78, i32 %79)
  store i64 %80, i64* %3, align 8
  br label %81

81:                                               ; preds = %77, %45, %41, %21, %17, %13
  %82 = load i64, i64* %3, align 8
  ret i64 %82
}

declare dso_local %struct.et_softc* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i64 @if_get_counter_default(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
