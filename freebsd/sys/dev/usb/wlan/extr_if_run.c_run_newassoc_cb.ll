; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_newassoc_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_newassoc_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_cmdq = type { i64, %struct.ieee80211_node* }
%struct.ieee80211_node = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.run_softc* }
%struct.run_softc = type { i32* }

@MA_OWNED = common dso_local global i32 0, align 4
@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @run_newassoc_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_newassoc_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.run_cmdq*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.run_softc*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.run_cmdq*
  store %struct.run_cmdq* %8, %struct.run_cmdq** %3, align 8
  %9 = load %struct.run_cmdq*, %struct.run_cmdq** %3, align 8
  %10 = getelementptr inbounds %struct.run_cmdq, %struct.run_cmdq* %9, i32 0, i32 1
  %11 = load %struct.ieee80211_node*, %struct.ieee80211_node** %10, align 8
  store %struct.ieee80211_node* %11, %struct.ieee80211_node** %4, align 8
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.run_softc*, %struct.run_softc** %17, align 8
  store %struct.run_softc* %18, %struct.run_softc** %5, align 8
  %19 = load %struct.run_cmdq*, %struct.run_cmdq** %3, align 8
  %20 = getelementptr inbounds %struct.run_cmdq, %struct.run_cmdq* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %23 = load i32, i32* @MA_OWNED, align 4
  %24 = call i32 @RUN_LOCK_ASSERT(%struct.run_softc* %22, i32 %23)
  %25 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @RT2860_WCID_ENTRY(i64 %26)
  %28 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %32 = call i32 @run_write_region_1(%struct.run_softc* %25, i32 %27, i32 %30, i32 %31)
  %33 = load %struct.run_softc*, %struct.run_softc** %5, align 8
  %34 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = call i32 @memset(i32* %37, i32 0, i32 4)
  ret void
}

declare dso_local i32 @RUN_LOCK_ASSERT(%struct.run_softc*, i32) #1

declare dso_local i32 @run_write_region_1(%struct.run_softc*, i32, i32, i32) #1

declare dso_local i32 @RT2860_WCID_ENTRY(i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
