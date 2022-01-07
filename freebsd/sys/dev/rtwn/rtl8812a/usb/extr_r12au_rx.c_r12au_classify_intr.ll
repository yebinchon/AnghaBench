; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/usb/extr_r12au_rx.c_r12au_classify_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/usb/extr_r12au_rx.c_r12au_classify_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.r92c_rx_stat = type { i32 }

@R12A_RXDW2_RPT_C2H = common dso_local global i32 0, align 4
@RTWN_RX_DATA = common dso_local global i32 0, align 4
@R12A_C2H_TX_REPORT = common dso_local global i64 0, align 8
@RTWN_RX_TX_REPORT = common dso_local global i32 0, align 4
@RTWN_RX_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r12au_classify_intr(%struct.rtwn_softc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtwn_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.r92c_rx_stat*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.r92c_rx_stat*
  store %struct.r92c_rx_stat* %12, %struct.r92c_rx_stat** %8, align 8
  %13 = load %struct.r92c_rx_stat*, %struct.r92c_rx_stat** %8, align 8
  %14 = getelementptr inbounds %struct.r92c_rx_stat, %struct.r92c_rx_stat* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32toh(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @R12A_RXDW2_RPT_C2H, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %3
  store i32 4, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, 2
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @RTWN_RX_DATA, align 4
  store i32 %27, i32* %4, align 4
  br label %43

28:                                               ; preds = %21
  %29 = load i8*, i8** %6, align 8
  %30 = bitcast i8* %29 to i64*
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @R12A_C2H_TX_REPORT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @RTWN_RX_TX_REPORT, align 4
  store i32 %38, i32* %4, align 4
  br label %43

39:                                               ; preds = %28
  %40 = load i32, i32* @RTWN_RX_OTHER, align 4
  store i32 %40, i32* %4, align 4
  br label %43

41:                                               ; preds = %3
  %42 = load i32, i32* @RTWN_RX_DATA, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %39, %37, %26
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @le32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
