; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_get_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.vte_softc = type { %struct.vte_hw_stats }
%struct.vte_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ifnet*, i32)* @vte_get_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vte_get_counter(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vte_softc*, align 8
  %7 = alloca %struct.vte_hw_stats*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %9 = call %struct.vte_softc* @if_getsoftc(%struct.ifnet* %8)
  store %struct.vte_softc* %9, %struct.vte_softc** %6, align 8
  %10 = load %struct.vte_softc*, %struct.vte_softc** %6, align 8
  %11 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %10, i32 0, i32 0
  store %struct.vte_hw_stats* %11, %struct.vte_hw_stats** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %49 [
    i32 128, label %13
    i32 132, label %17
    i32 129, label %21
    i32 130, label %29
    i32 131, label %33
  ]

13:                                               ; preds = %2
  %14 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %7, align 8
  %15 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %3, align 8
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %7, align 8
  %19 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %3, align 8
  br label %53

21:                                               ; preds = %2
  %22 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %7, align 8
  %23 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %7, align 8
  %26 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  store i64 %28, i64* %3, align 8
  br label %53

29:                                               ; preds = %2
  %30 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %7, align 8
  %31 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %3, align 8
  br label %53

33:                                               ; preds = %2
  %34 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %7, align 8
  %35 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %7, align 8
  %38 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %7, align 8
  %42 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %7, align 8
  %46 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  store i64 %48, i64* %3, align 8
  br label %53

49:                                               ; preds = %2
  %50 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @if_get_counter_default(%struct.ifnet* %50, i32 %51)
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %49, %33, %29, %21, %17, %13
  %54 = load i64, i64* %3, align 8
  ret i64 %54
}

declare dso_local %struct.vte_softc* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i64 @if_get_counter_default(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
