; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_pio_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_pio_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_pio_rxqueue = type { %struct.bwn_mac* }
%struct.bwn_mac = type { i64, %struct.bwn_softc* }
%struct.bwn_softc = type { i32 }

@BWN_MAC_STATUS_STARTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"too many RX frames in PIO mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_pio_rxqueue*)* @bwn_pio_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_pio_rx(%struct.bwn_pio_rxqueue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwn_pio_rxqueue*, align 8
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca %struct.bwn_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.bwn_pio_rxqueue* %0, %struct.bwn_pio_rxqueue** %3, align 8
  %7 = load %struct.bwn_pio_rxqueue*, %struct.bwn_pio_rxqueue** %3, align 8
  %8 = getelementptr inbounds %struct.bwn_pio_rxqueue, %struct.bwn_pio_rxqueue* %7, i32 0, i32 0
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %8, align 8
  store %struct.bwn_mac* %9, %struct.bwn_mac** %4, align 8
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %11 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %10, i32 0, i32 1
  %12 = load %struct.bwn_softc*, %struct.bwn_softc** %11, align 8
  store %struct.bwn_softc* %12, %struct.bwn_softc** %5, align 8
  %13 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %14 = call i32 @BWN_ASSERT_LOCKED(%struct.bwn_softc* %13)
  %15 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %16 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BWN_MAC_STATUS_STARTED, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

21:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %31, %21
  %23 = load i32, i32* %6, align 4
  %24 = icmp ult i32 %23, 5000
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load %struct.bwn_pio_rxqueue*, %struct.bwn_pio_rxqueue** %3, align 8
  %27 = call i64 @bwn_pio_rxeof(%struct.bwn_pio_rxqueue* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %34

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %22

34:                                               ; preds = %29, %22
  %35 = load i32, i32* %6, align 4
  %36 = icmp uge i32 %35, 5000
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %39 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %6, align 4
  %44 = icmp ugt i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %42, %20
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @BWN_ASSERT_LOCKED(%struct.bwn_softc*) #1

declare dso_local i64 @bwn_pio_rxeof(%struct.bwn_pio_rxqueue*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
