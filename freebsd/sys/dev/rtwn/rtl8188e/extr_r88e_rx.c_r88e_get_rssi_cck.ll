; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/extr_r88e_rx.c_r88e_get_rssi_cck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/extr_r88e_rx.c_r88e_get_rssi_cck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.r88e_rx_phystat = type { i32 }

@RTWN_FLAG_CCK_HIPWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r88e_get_rssi_cck(%struct.rtwn_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.r88e_rx_phystat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.r88e_rx_phystat*
  store %struct.r88e_rx_phystat* %10, %struct.r88e_rx_phystat** %5, align 8
  %11 = load %struct.r88e_rx_phystat*, %struct.r88e_rx_phystat** %5, align 8
  %12 = getelementptr inbounds %struct.r88e_rx_phystat, %struct.r88e_rx_phystat* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 224
  %15 = ashr i32 %14, 5
  store i32 %15, i32* %6, align 4
  %16 = load %struct.r88e_rx_phystat*, %struct.r88e_rx_phystat** %5, align 8
  %17 = getelementptr inbounds %struct.r88e_rx_phystat, %struct.r88e_rx_phystat* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 31
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = mul nsw i32 2, %20
  %22 = sub nsw i32 6, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %63 [
    i32 7, label %24
    i32 6, label %32
    i32 5, label %35
    i32 4, label %38
    i32 3, label %41
    i32 2, label %44
    i32 1, label %57
    i32 0, label %60
  ]

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 27
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 -94, i32* %8, align 4
  br label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, -46
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %28, %27
  br label %63

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, -44
  store i32 %34, i32* %8, align 4
  br label %63

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, -28
  store i32 %37, i32* %8, align 4
  br label %63

38:                                               ; preds = %2
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, -22
  store i32 %40, i32* %8, align 4
  br label %63

41:                                               ; preds = %2
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, -10
  store i32 %43, i32* %8, align 4
  br label %63

44:                                               ; preds = %2
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 4
  store i32 %46, i32* %8, align 4
  %47 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %48 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @RTWN_FLAG_CCK_HIPWR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 %54, 6
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %44
  br label %63

57:                                               ; preds = %2
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 8
  store i32 %59, i32* %8, align 4
  br label %63

60:                                               ; preds = %2
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 14
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %2, %60, %57, %56, %41, %38, %35, %32, %31
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
