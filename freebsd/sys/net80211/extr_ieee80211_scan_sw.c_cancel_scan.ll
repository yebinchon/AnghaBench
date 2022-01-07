; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sw.c_cancel_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sw.c_cancel_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211com* }
%struct.ieee80211com = type { i32, %struct.ieee80211_scan_state* }
%struct.ieee80211_scan_state = type { i32, %struct.ieee80211vap* }
%struct.scan_state = type { i32 }

@ISCAN_PAUSE = common dso_local global i32 0, align 4
@ISCAN_CANCEL = common dso_local global i32 0, align 4
@IEEE80211_F_SCAN = common dso_local global i32 0, align 4
@IEEE80211_MSG_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s: %s %s scan\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cancel\00", align 1
@IEEE80211_SCAN_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@IEEE80211_SCAN_NOPICK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"%s: called; F_SCAN=%d, vap=%s, signal=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"nomatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*, i32, i8*)* @cancel_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cancel_scan(%struct.ieee80211vap* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee80211com*, align 8
  %8 = alloca %struct.ieee80211_scan_state*, align 8
  %9 = alloca %struct.scan_state*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %11, i32 0, i32 0
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %12, align 8
  store %struct.ieee80211com* %13, %struct.ieee80211com** %7, align 8
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 1
  %16 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %15, align 8
  store %struct.ieee80211_scan_state* %16, %struct.ieee80211_scan_state** %8, align 8
  %17 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %8, align 8
  %18 = call %struct.scan_state* @SCAN_PRIVATE(%struct.ieee80211_scan_state* %17)
  store %struct.scan_state* %18, %struct.scan_state** %9, align 8
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %20 = call i32 @IEEE80211_LOCK(%struct.ieee80211com* %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @ISCAN_PAUSE, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @ISCAN_CANCEL, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %10, align 4
  %29 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IEEE80211_F_SCAN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %8, align 8
  %40 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %39, i32 0, i32 1
  %41 = load %struct.ieee80211vap*, %struct.ieee80211vap** %40, align 8
  %42 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %43 = icmp eq %struct.ieee80211vap* %41, %42
  br i1 %43, label %44, label %77

44:                                               ; preds = %38, %35
  %45 = load %struct.scan_state*, %struct.scan_state** %9, align 8
  %46 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %44
  %52 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %53 = load i32, i32* @IEEE80211_MSG_SCAN, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %59 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %8, align 8
  %60 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IEEE80211_SCAN_ACTIVE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %67 = call i32 (%struct.ieee80211vap*, i32, i8*, i8*, ...) @IEEE80211_DPRINTF(%struct.ieee80211vap* %52, i32 %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %54, i8* %58, i8* %66)
  %68 = load i32, i32* @IEEE80211_SCAN_NOPICK, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %8, align 8
  %71 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @scan_signal_locked(%struct.ieee80211_scan_state* %74, i32 %75)
  br label %107

77:                                               ; preds = %44, %38, %27
  %78 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %79 = load i32, i32* @IEEE80211_MSG_SCAN, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %82 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @IEEE80211_F_SCAN, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %8, align 8
  %91 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %90, i32 0, i32 1
  %92 = load %struct.ieee80211vap*, %struct.ieee80211vap** %91, align 8
  %93 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %94 = icmp eq %struct.ieee80211vap* %92, %93
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)
  %97 = load %struct.scan_state*, %struct.scan_state** %9, align 8
  %98 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %10, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i32 (%struct.ieee80211vap*, i32, i8*, i8*, ...) @IEEE80211_DPRINTF(%struct.ieee80211vap* %78, i32 %79, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %80, i32 %89, i8* %96, i32 %105)
  br label %107

107:                                              ; preds = %77, %51
  %108 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %109 = call i32 @IEEE80211_UNLOCK(%struct.ieee80211com* %108)
  ret void
}

declare dso_local %struct.scan_state* @SCAN_PRIVATE(%struct.ieee80211_scan_state*) #1

declare dso_local i32 @IEEE80211_LOCK(%struct.ieee80211com*) #1

declare dso_local i32 @IEEE80211_DPRINTF(%struct.ieee80211vap*, i32, i8*, i8*, ...) #1

declare dso_local i32 @scan_signal_locked(%struct.ieee80211_scan_state*, i32) #1

declare dso_local i32 @IEEE80211_UNLOCK(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
