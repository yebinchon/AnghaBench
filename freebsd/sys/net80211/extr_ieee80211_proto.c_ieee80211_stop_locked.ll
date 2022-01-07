; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_ieee80211_stop_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_ieee80211_stop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ifnet*, %struct.ieee80211com* }
%struct.ifnet = type { i32 }
%struct.ieee80211com = type { i64, i64, i32 }

@IEEE80211_MSG_STATE = common dso_local global i32 0, align 4
@IEEE80211_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"stop running, %d vaps running\0A\00", align 1
@IEEE80211_S_INIT = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"down parent %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_stop_locked(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %5 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %5, i32 0, i32 1
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  store %struct.ieee80211com* %7, %struct.ieee80211com** %3, align 8
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %8, i32 0, i32 0
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %12 = call i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com* %11)
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %14 = load i32, i32* @IEEE80211_MSG_STATE, align 4
  %15 = load i32, i32* @IEEE80211_MSG_DEBUG, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @IEEE80211_DPRINTF(%struct.ieee80211vap* %13, i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %22 = load i32, i32* @IEEE80211_S_INIT, align 4
  %23 = call i32 @ieee80211_new_state_locked(%struct.ieee80211vap* %21, i32 %22, i32 -1)
  %24 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %1
  %31 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %38, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %30
  %43 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %44 = load i32, i32* @IEEE80211_MSG_STATE, align 4
  %45 = load i32, i32* @IEEE80211_MSG_DEBUG, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %48 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @IEEE80211_DPRINTF(%struct.ieee80211vap* %43, i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  %51 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %52 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %53 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %52, i32 0, i32 2
  %54 = call i32 @ieee80211_runtask(%struct.ieee80211com* %51, i32* %53)
  br label %55

55:                                               ; preds = %42, %30
  br label %56

56:                                               ; preds = %55, %1
  ret void
}

declare dso_local i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com*) #1

declare dso_local i32 @IEEE80211_DPRINTF(%struct.ieee80211vap*, i32, i8*, i64) #1

declare dso_local i32 @ieee80211_new_state_locked(%struct.ieee80211vap*, i32, i32) #1

declare dso_local i32 @ieee80211_runtask(%struct.ieee80211com*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
