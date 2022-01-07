; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sw.c_scan_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sw.c_scan_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_scan_state = type { i64, i64, i32, %struct.ieee80211vap*, %struct.ieee80211com* }
%struct.ieee80211vap = type { i32, i32 (%struct.ieee80211vap*, i32)* }
%struct.ieee80211com = type { i32, i32 }
%struct.scan_state = type { i32, i64 }

@IEEE80211_F_SCAN = common dso_local global i32 0, align 4
@IEEE80211_FEXT_SCAN_OFFLOAD = common dso_local global i32 0, align 4
@IEEE80211_FEXT_BGSCAN = common dso_local global i32 0, align 4
@ISCAN_INTERRUPT = common dso_local global i32 0, align 4
@ISCAN_PAUSE = common dso_local global i32 0, align 4
@ISCAN_ABORT = common dso_local global i32 0, align 4
@IEEE80211_SCAN_ONCE = common dso_local global i32 0, align 4
@IEEE80211_SCAN_PICK1ST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_scan_state*, i32)* @scan_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_done(%struct.ieee80211_scan_state* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_scan_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scan_state*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.ieee80211vap*, align 8
  store %struct.ieee80211_scan_state* %0, %struct.ieee80211_scan_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %9 = call %struct.scan_state* @SCAN_PRIVATE(%struct.ieee80211_scan_state* %8)
  store %struct.scan_state* %9, %struct.scan_state** %5, align 8
  %10 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %10, i32 0, i32 4
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %11, align 8
  store %struct.ieee80211com* %12, %struct.ieee80211com** %6, align 8
  %13 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %13, i32 0, i32 3
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %14, align 8
  store %struct.ieee80211vap* %15, %struct.ieee80211vap** %7, align 8
  %16 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %17 = call i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com* %16)
  %18 = load i32, i32* @IEEE80211_F_SCAN, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %65

26:                                               ; preds = %2
  %27 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IEEE80211_FEXT_SCAN_OFFLOAD, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %34, i32 0, i32 1
  %36 = load i32 (%struct.ieee80211vap*, i32)*, i32 (%struct.ieee80211vap*, i32)** %35, align 8
  %37 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %38 = call i32 %36(%struct.ieee80211vap* %37, i32 0)
  br label %39

39:                                               ; preds = %33, %26
  %40 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %41 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %42, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load i32, i32* @IEEE80211_FEXT_BGSCAN, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %51 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %47, %39
  %55 = load %struct.scan_state*, %struct.scan_state** %5, align 8
  %56 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ISCAN_INTERRUPT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %63 = call i32 @ieee80211_notify_scan_done(%struct.ieee80211vap* %62)
  br label %64

64:                                               ; preds = %61, %54
  br label %65

65:                                               ; preds = %64, %2
  %66 = load i32, i32* @ISCAN_PAUSE, align 4
  %67 = load i32, i32* @ISCAN_ABORT, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load %struct.scan_state*, %struct.scan_state** %5, align 8
  %71 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.scan_state*, %struct.scan_state** %5, align 8
  %75 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* @IEEE80211_SCAN_ONCE, align 4
  %77 = load i32, i32* @IEEE80211_SCAN_PICK1ST, align 4
  %78 = or i32 %76, %77
  %79 = xor i32 %78, -1
  %80 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %81 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %85 = call i32 @IEEE80211_UNLOCK(%struct.ieee80211com* %84)
  ret void
}

declare dso_local %struct.scan_state* @SCAN_PRIVATE(%struct.ieee80211_scan_state*) #1

declare dso_local i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_notify_scan_done(%struct.ieee80211vap*) #1

declare dso_local i32 @IEEE80211_UNLOCK(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
