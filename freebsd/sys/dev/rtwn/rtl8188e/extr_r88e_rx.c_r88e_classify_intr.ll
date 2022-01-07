; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/extr_r88e_rx.c_r88e_classify_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/extr_r88e_rx.c_r88e_classify_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.r92c_rx_stat = type { i32 }

@R88E_RXDW3_RPT = common dso_local global i32 0, align 4
@RTWN_RX_DATA = common dso_local global i32 0, align 4
@RTWN_RX_TX_REPORT = common dso_local global i32 0, align 4
@RTWN_RX_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r88e_classify_intr(%struct.rtwn_softc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtwn_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.r92c_rx_stat*, align 8
  %9 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.r92c_rx_stat*
  store %struct.r92c_rx_stat* %11, %struct.r92c_rx_stat** %8, align 8
  %12 = load %struct.r92c_rx_stat*, %struct.r92c_rx_stat** %8, align 8
  %13 = getelementptr inbounds %struct.r92c_rx_stat, %struct.r92c_rx_stat* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32toh(i32 %14)
  %16 = load i32, i32* @R88E_RXDW3_RPT, align 4
  %17 = call i32 @MS(i32 %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %25 [
    i32 130, label %19
    i32 129, label %21
    i32 128, label %21
    i32 131, label %23
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* @RTWN_RX_DATA, align 4
  store i32 %20, i32* %4, align 4
  br label %27

21:                                               ; preds = %3, %3
  %22 = load i32, i32* @RTWN_RX_TX_REPORT, align 4
  store i32 %22, i32* %4, align 4
  br label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @RTWN_RX_OTHER, align 4
  store i32 %24, i32* %4, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @RTWN_RX_DATA, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %23, %21, %19
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
