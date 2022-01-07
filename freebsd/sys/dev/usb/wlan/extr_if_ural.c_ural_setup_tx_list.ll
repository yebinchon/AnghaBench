; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_setup_tx_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_setup_tx_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ural_softc = type { i64, i32, %struct.ural_tx_data*, i32 }
%struct.ural_tx_data = type { %struct.ural_softc* }

@RAL_TX_LIST_COUNT = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ural_softc*)* @ural_setup_tx_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ural_setup_tx_list(%struct.ural_softc* %0) #0 {
  %2 = alloca %struct.ural_softc*, align 8
  %3 = alloca %struct.ural_tx_data*, align 8
  %4 = alloca i32, align 4
  store %struct.ural_softc* %0, %struct.ural_softc** %2, align 8
  %5 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %5, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %7, i32 0, i32 3
  %9 = call i32 @STAILQ_INIT(i32* %8)
  %10 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %10, i32 0, i32 1
  %12 = call i32 @STAILQ_INIT(i32* %11)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %36, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @RAL_TX_LIST_COUNT, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %18, i32 0, i32 2
  %20 = load %struct.ural_tx_data*, %struct.ural_tx_data** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ural_tx_data, %struct.ural_tx_data* %20, i64 %22
  store %struct.ural_tx_data* %23, %struct.ural_tx_data** %3, align 8
  %24 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %25 = load %struct.ural_tx_data*, %struct.ural_tx_data** %3, align 8
  %26 = getelementptr inbounds %struct.ural_tx_data, %struct.ural_tx_data* %25, i32 0, i32 0
  store %struct.ural_softc* %24, %struct.ural_softc** %26, align 8
  %27 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %27, i32 0, i32 1
  %29 = load %struct.ural_tx_data*, %struct.ural_tx_data** %3, align 8
  %30 = load i32, i32* @next, align 4
  %31 = call i32 @STAILQ_INSERT_TAIL(i32* %28, %struct.ural_tx_data* %29, i32 %30)
  %32 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  br label %36

36:                                               ; preds = %17
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %13

39:                                               ; preds = %13
  ret void
}

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.ural_tx_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
