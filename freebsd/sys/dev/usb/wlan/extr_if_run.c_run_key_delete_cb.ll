; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_key_delete_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_key_delete_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_cmdq = type { %struct.ieee80211_key, %struct.run_softc* }
%struct.ieee80211_key = type { i32, i32, i64 }
%struct.run_softc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IEEE80211_KEY_GROUP = common dso_local global i32 0, align 4
@RUN_DEBUG_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"removing group key\0A\00", align 1
@RT2860_SKEY_MODE_0_7 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"removing key for wcid %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @run_key_delete_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_key_delete_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.run_cmdq*, align 8
  %4 = alloca %struct.run_softc*, align 8
  %5 = alloca %struct.ieee80211_key*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.run_cmdq*
  store %struct.run_cmdq* %9, %struct.run_cmdq** %3, align 8
  %10 = load %struct.run_cmdq*, %struct.run_cmdq** %3, align 8
  %11 = getelementptr inbounds %struct.run_cmdq, %struct.run_cmdq* %10, i32 0, i32 1
  %12 = load %struct.run_softc*, %struct.run_softc** %11, align 8
  store %struct.run_softc* %12, %struct.run_softc** %4, align 8
  %13 = load %struct.run_cmdq*, %struct.run_cmdq** %3, align 8
  %14 = getelementptr inbounds %struct.run_cmdq, %struct.run_cmdq* %13, i32 0, i32 0
  store %struct.ieee80211_key* %14, %struct.ieee80211_key** %5, align 8
  %15 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %16 = load i32, i32* @MA_OWNED, align 4
  %17 = call i32 @RUN_LOCK_ASSERT(%struct.run_softc* %15, i32 %16)
  %18 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IEEE80211_KEY_GROUP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %1
  %25 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %26 = load i32, i32* @RUN_DEBUG_KEY, align 4
  %27 = call i32 (%struct.run_softc*, i32, i8*, ...) @RUN_DPRINTF(%struct.run_softc* %25, i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %29 = load i32, i32* @RT2860_SKEY_MODE_0_7, align 4
  %30 = call i32 @run_read(%struct.run_softc* %28, i32 %29, i32* %6)
  %31 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 4
  %35 = shl i32 15, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %40 = load i32, i32* @RT2860_SKEY_MODE_0_7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @run_write(%struct.run_softc* %39, i32 %40, i32 %41)
  br label %68

43:                                               ; preds = %1
  %44 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %45 = load i32, i32* @RUN_DEBUG_KEY, align 4
  %46 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (%struct.run_softc*, i32, i8*, ...) @RUN_DPRINTF(%struct.run_softc* %44, i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  %50 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %7, align 8
  %53 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @RT2860_WCID_ATTR(i64 %54)
  %56 = call i32 @run_read(%struct.run_softc* %53, i32 %55, i32* %6)
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, -16
  store i32 %58, i32* %6, align 4
  %59 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @RT2860_WCID_ATTR(i64 %60)
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @run_write(%struct.run_softc* %59, i32 %61, i32 %62)
  %64 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @RT2860_WCID_ENTRY(i64 %65)
  %67 = call i32 @run_set_region_4(%struct.run_softc* %64, i32 %66, i32 0, i32 8)
  br label %68

68:                                               ; preds = %43, %24
  %69 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %70 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  ret void
}

declare dso_local i32 @RUN_LOCK_ASSERT(%struct.run_softc*, i32) #1

declare dso_local i32 @RUN_DPRINTF(%struct.run_softc*, i32, i8*, ...) #1

declare dso_local i32 @run_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @RT2860_WCID_ATTR(i64) #1

declare dso_local i32 @run_set_region_4(%struct.run_softc*, i32, i32, i32) #1

declare dso_local i32 @RT2860_WCID_ENTRY(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
