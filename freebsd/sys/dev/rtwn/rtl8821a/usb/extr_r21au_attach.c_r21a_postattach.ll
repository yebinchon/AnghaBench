; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8821a/usb/extr_r21au_attach.c_r21a_postattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8821a/usb/extr_r21au_attach.c_r21a_postattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, %struct.r12a_softc*, %struct.ieee80211com }
%struct.r12a_softc = type { i64, i32, i32, i32 }
%struct.ieee80211com = type { i32, i32, i32 }

@R92C_BOARD_TYPE_MINICARD = common dso_local global i64 0, align 8
@R92C_BOARD_TYPE_SOLO = common dso_local global i64 0, align 8
@R92C_BOARD_TYPE_COMBO = common dso_local global i64 0, align 8
@r88e_set_led = common dso_local global i32 0, align 4
@r21a_set_led = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@r21au_chan_check = common dso_local global i32 0, align 4
@r12a_ioctl_net = common dso_local global i32 0, align 4
@r21au_scan_start = common dso_local global i32 0, align 4
@r21au_scan_end = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @r21a_postattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r21a_postattach(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.r12a_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %5 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %5, i32 0, i32 2
  store %struct.ieee80211com* %6, %struct.ieee80211com** %3, align 8
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %8 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %7, i32 0, i32 1
  %9 = load %struct.r12a_softc*, %struct.r12a_softc** %8, align 8
  store %struct.r12a_softc* %9, %struct.r12a_softc** %4, align 8
  %10 = load %struct.r12a_softc*, %struct.r12a_softc** %4, align 8
  %11 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @R92C_BOARD_TYPE_MINICARD, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %1
  %16 = load %struct.r12a_softc*, %struct.r12a_softc** %4, align 8
  %17 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @R92C_BOARD_TYPE_SOLO, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.r12a_softc*, %struct.r12a_softc** %4, align 8
  %23 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @R92C_BOARD_TYPE_COMBO, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21, %15, %1
  %28 = load i32, i32* @r88e_set_led, align 4
  %29 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %30 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %35

31:                                               ; preds = %21
  %32 = load i32, i32* @r21a_set_led, align 4
  %33 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %34 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @taskqueue_thread, align 4
  %37 = load %struct.r12a_softc*, %struct.r12a_softc** %4, align 8
  %38 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %37, i32 0, i32 3
  %39 = load i32, i32* @r21au_chan_check, align 4
  %40 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %41 = call i32 @TIMEOUT_TASK_INIT(i32 %36, i32* %38, i32 0, i32 %39, %struct.rtwn_softc* %40)
  %42 = load i32, i32* @r12a_ioctl_net, align 4
  %43 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.r12a_softc*, %struct.r12a_softc** %4, align 8
  %49 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @r21au_scan_start, align 4
  %51 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %52 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %54 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.r12a_softc*, %struct.r12a_softc** %4, align 8
  %57 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @r21au_scan_end, align 4
  %59 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %60 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  ret void
}

declare dso_local i32 @TIMEOUT_TASK_INIT(i32, i32*, i32, i32, %struct.rtwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
