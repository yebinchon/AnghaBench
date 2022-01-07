; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8821a/extr_r21a_rx.c_r21a_get_rssi_cck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8821a/extr_r21a_rx.c_r21a_get_rssi_cck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.r12a_rx_phystat = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r21a_get_rssi_cck(%struct.rtwn_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.r12a_rx_phystat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.r12a_rx_phystat*
  store %struct.r12a_rx_phystat* %9, %struct.r12a_rx_phystat** %5, align 8
  %10 = load %struct.r12a_rx_phystat*, %struct.r12a_rx_phystat** %5, align 8
  %11 = getelementptr inbounds %struct.r12a_rx_phystat, %struct.r12a_rx_phystat* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 224
  %16 = ashr i32 %15, 5
  store i32 %16, i32* %6, align 4
  %17 = load %struct.r12a_rx_phystat*, %struct.r12a_rx_phystat** %5, align 8
  %18 = getelementptr inbounds %struct.r12a_rx_phystat, %struct.r12a_rx_phystat* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 31
  %23 = mul nsw i32 2, %22
  %24 = sub nsw i32 -6, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %41 [
    i32 5, label %26
    i32 4, label %29
    i32 2, label %32
    i32 1, label %35
    i32 0, label %38
  ]

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 32
  store i32 %28, i32* %7, align 4
  br label %41

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 %30, 24
  store i32 %31, i32* %7, align 4
  br label %41

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 11
  store i32 %34, i32* %7, align 4
  br label %41

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 5
  store i32 %37, i32* %7, align 4
  br label %41

38:                                               ; preds = %2
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 21
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %2, %38, %35, %32, %29, %26
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
