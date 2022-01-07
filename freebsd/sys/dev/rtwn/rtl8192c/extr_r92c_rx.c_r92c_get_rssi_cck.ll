; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_rx.c_r92c_get_rssi_cck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_rx.c_r92c_get_rssi_cck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.r92c_rx_cck = type { i32 }

@r92c_get_rssi_cck.cckoff = internal constant [4 x i32] [i32 16, i32 -12, i32 -26, i32 -46], align 16
@RTWN_FLAG_CCK_HIPWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r92c_get_rssi_cck(%struct.rtwn_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.r92c_rx_cck*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.r92c_rx_cck*
  store %struct.r92c_rx_cck* %9, %struct.r92c_rx_cck** %5, align 8
  %10 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %11 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RTWN_FLAG_CCK_HIPWR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.r92c_rx_cck*, %struct.r92c_rx_cck** %5, align 8
  %18 = getelementptr inbounds %struct.r92c_rx_cck, %struct.r92c_rx_cck* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 5
  %21 = and i32 %20, 3
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %6, align 8
  %23 = load %struct.r92c_rx_cck*, %struct.r92c_rx_cck** %5, align 8
  %24 = getelementptr inbounds %struct.r92c_rx_cck, %struct.r92c_rx_cck* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 31
  %27 = shl i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %39

28:                                               ; preds = %2
  %29 = load %struct.r92c_rx_cck*, %struct.r92c_rx_cck** %5, align 8
  %30 = getelementptr inbounds %struct.r92c_rx_cck, %struct.r92c_rx_cck* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 6
  %33 = and i32 %32, 3
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %6, align 8
  %35 = load %struct.r92c_rx_cck*, %struct.r92c_rx_cck** %5, align 8
  %36 = getelementptr inbounds %struct.r92c_rx_cck, %struct.r92c_rx_cck* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 62
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %28, %16
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* @r92c_get_rssi_cck.cckoff, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
