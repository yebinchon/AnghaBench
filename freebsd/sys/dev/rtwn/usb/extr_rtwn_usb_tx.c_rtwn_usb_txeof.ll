; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_tx.c_rtwn_usb_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_tx.c_rtwn_usb_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_usb_softc = type { i32, i32, i32, %struct.rtwn_softc }
%struct.rtwn_softc = type { i64, i64, i32, i64 }
%struct.rtwn_data = type { i32*, i32* }

@RTWN_RATECTL_NET80211 = common dso_local global i64 0, align 8
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_usb_softc*, %struct.rtwn_data*, i32)* @rtwn_usb_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_usb_txeof(%struct.rtwn_usb_softc* %0, %struct.rtwn_data* %1, i32 %2) #0 {
  %4 = alloca %struct.rtwn_usb_softc*, align 8
  %5 = alloca %struct.rtwn_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtwn_softc*, align 8
  store %struct.rtwn_usb_softc* %0, %struct.rtwn_usb_softc** %4, align 8
  store %struct.rtwn_data* %1, %struct.rtwn_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %4, align 8
  %9 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %8, i32 0, i32 3
  store %struct.rtwn_softc* %9, %struct.rtwn_softc** %7, align 8
  %10 = load %struct.rtwn_softc*, %struct.rtwn_softc** %7, align 8
  %11 = call i32 @RTWN_ASSERT_LOCKED(%struct.rtwn_softc* %10)
  %12 = load %struct.rtwn_data*, %struct.rtwn_data** %5, align 8
  %13 = getelementptr inbounds %struct.rtwn_data, %struct.rtwn_data* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.rtwn_data*, %struct.rtwn_data** %5, align 8
  %18 = getelementptr inbounds %struct.rtwn_data, %struct.rtwn_data* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.rtwn_data*, %struct.rtwn_data** %5, align 8
  %21 = getelementptr inbounds %struct.rtwn_data, %struct.rtwn_data* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ieee80211_tx_complete(i32* %19, i32* %22, i32 %23)
  br label %25

25:                                               ; preds = %16, %3
  %26 = load %struct.rtwn_softc*, %struct.rtwn_softc** %7, align 8
  %27 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RTWN_RATECTL_NET80211, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.rtwn_softc*, %struct.rtwn_softc** %7, align 8
  %33 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.rtwn_softc*, %struct.rtwn_softc** %7, align 8
  %38 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %38, align 8
  br label %41

41:                                               ; preds = %36, %31
  br label %42

42:                                               ; preds = %41, %25
  %43 = load %struct.rtwn_data*, %struct.rtwn_data** %5, align 8
  %44 = getelementptr inbounds %struct.rtwn_data, %struct.rtwn_data* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.rtwn_data*, %struct.rtwn_data** %5, align 8
  %46 = getelementptr inbounds %struct.rtwn_data, %struct.rtwn_data* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  %47 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %4, align 8
  %48 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %47, i32 0, i32 2
  %49 = load %struct.rtwn_data*, %struct.rtwn_data** %5, align 8
  %50 = load i32, i32* @next, align 4
  %51 = call i32 @STAILQ_INSERT_TAIL(i32* %48, %struct.rtwn_data* %49, i32 %50)
  %52 = load %struct.rtwn_softc*, %struct.rtwn_softc** %7, align 8
  %53 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %4, align 8
  %55 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %54, i32 0, i32 1
  %56 = call i64 @STAILQ_EMPTY(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %42
  %59 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %4, align 8
  %60 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %59, i32 0, i32 0
  %61 = call i64 @STAILQ_EMPTY(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.rtwn_softc*, %struct.rtwn_softc** %7, align 8
  %65 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %64, i32 0, i32 2
  store i32 0, i32* %65, align 8
  br label %69

66:                                               ; preds = %58, %42
  %67 = load %struct.rtwn_softc*, %struct.rtwn_softc** %7, align 8
  %68 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %67, i32 0, i32 2
  store i32 5, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %63
  ret void
}

declare dso_local i32 @RTWN_ASSERT_LOCKED(%struct.rtwn_softc*) #1

declare dso_local i32 @ieee80211_tx_complete(i32*, i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.rtwn_data*, i32) #1

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
