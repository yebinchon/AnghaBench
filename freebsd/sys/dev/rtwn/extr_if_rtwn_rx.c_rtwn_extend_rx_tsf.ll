; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_rx.c_rtwn_extend_rx_tsf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_rx.c_rtwn_extend_rx_tsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.rtwn_rx_stat_common = type { i32, i32 }

@RTWN_RXDW3_BSSID01_FIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtwn_softc*, %struct.rtwn_rx_stat_common*)* @rtwn_extend_rx_tsf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtwn_extend_rx_tsf(%struct.rtwn_softc* %0, %struct.rtwn_rx_stat_common* %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca %struct.rtwn_rx_stat_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store %struct.rtwn_rx_stat_common* %1, %struct.rtwn_rx_stat_common** %4, align 8
  %12 = load %struct.rtwn_rx_stat_common*, %struct.rtwn_rx_stat_common** %4, align 8
  %13 = getelementptr inbounds %struct.rtwn_rx_stat_common, %struct.rtwn_rx_stat_common* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32toh(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.rtwn_rx_stat_common*, %struct.rtwn_rx_stat_common** %4, align 8
  %17 = getelementptr inbounds %struct.rtwn_rx_stat_common, %struct.rtwn_rx_stat_common* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32toh(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @RTWN_RXDW3_BSSID01_FIT, align 4
  %22 = call i32 @MS(i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %30 [
    i32 1, label %24
    i32 2, label %24
  ]

24:                                               ; preds = %2, %2
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @rtwn_get_tsf_low(%struct.rtwn_softc* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  br label %49

30:                                               ; preds = %2
  %31 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %32 = call i32 @rtwn_get_tsf_low(%struct.rtwn_softc* %31, i32 0)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %34 = call i32 @rtwn_get_tsf_low(%struct.rtwn_softc* %33, i32 1)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %35, %36
  %38 = call i32 @abs(i32 %37) #3
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %39, %40
  %42 = call i32 @abs(i32 %41) #3
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %8, align 4
  br label %48

46:                                               ; preds = %30
  store i32 1, i32* %9, align 4
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %46, %44
  br label %49

49:                                               ; preds = %48, %24
  %50 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @rtwn_get_tsf_high(%struct.rtwn_softc* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  %58 = icmp ugt i32 %57, -65536
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %59, %56, %49
  %63 = load i32, i32* %5, align 4
  %64 = shl i32 %63, 32
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @rtwn_get_tsf_low(%struct.rtwn_softc*, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @rtwn_get_tsf_high(%struct.rtwn_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
