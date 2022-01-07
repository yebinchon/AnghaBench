; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_get_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { %struct.bge_mac_stats }
%struct.bge_mac_stats = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @bge_get_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bge_get_counter(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bge_softc*, align 8
  %7 = alloca %struct.bge_mac_stats*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.bge_softc* @if_getsoftc(i32 %8)
  store %struct.bge_softc* %9, %struct.bge_softc** %6, align 8
  %10 = load %struct.bge_softc*, %struct.bge_softc** %6, align 8
  %11 = call i32 @BGE_IS_5705_PLUS(%struct.bge_softc* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @if_get_counter_default(i32 %14, i32 %15)
  store i64 %16, i64* %3, align 8
  br label %41

17:                                               ; preds = %2
  %18 = load %struct.bge_softc*, %struct.bge_softc** %6, align 8
  %19 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %18, i32 0, i32 0
  store %struct.bge_mac_stats* %19, %struct.bge_mac_stats** %7, align 8
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %37 [
    i32 128, label %21
    i32 129, label %33
  ]

21:                                               ; preds = %17
  %22 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %7, align 8
  %23 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %7, align 8
  %26 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %7, align 8
  %30 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  store i64 %32, i64* %3, align 8
  br label %41

33:                                               ; preds = %17
  %34 = load %struct.bge_mac_stats*, %struct.bge_mac_stats** %7, align 8
  %35 = getelementptr inbounds %struct.bge_mac_stats, %struct.bge_mac_stats* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %3, align 8
  br label %41

37:                                               ; preds = %17
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @if_get_counter_default(i32 %38, i32 %39)
  store i64 %40, i64* %3, align 8
  br label %41

41:                                               ; preds = %37, %33, %21, %13
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

declare dso_local %struct.bge_softc* @if_getsoftc(i32) #1

declare dso_local i32 @BGE_IS_5705_PLUS(%struct.bge_softc*) #1

declare dso_local i64 @if_get_counter_default(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
