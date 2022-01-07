; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ratectl.c_ieee80211_ratectl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ratectl.c_ieee80211_ratectl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.ieee80211vap*)* }
%struct.ieee80211vap = type { i32, i32, %struct.TYPE_2__* }

@ratectls = common dso_local global %struct.TYPE_2__** null, align 8
@IEEE80211_RATECTL_NONE = common dso_local global i64 0, align 8
@IEEE80211_RATECTL_AMRR = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"rate_stats\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@ieee80211_ratectl_sysctl_stats = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"ratectl node stats\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_ratectl_init(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %3 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ratectls, align 8
  %7 = load i64, i64* @IEEE80211_RATECTL_NONE, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %6, i64 %7
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp eq %struct.TYPE_2__* %5, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %13 = load i32, i32* @IEEE80211_RATECTL_AMRR, align 4
  %14 = call i32 @ieee80211_ratectl_set(%struct.ieee80211vap* %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %17 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.ieee80211vap*)*, i32 (%struct.ieee80211vap*)** %19, align 8
  %21 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %22 = call i32 %20(%struct.ieee80211vap* %21)
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %24 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @SYSCTL_CHILDREN(i32 %28)
  %30 = load i32, i32* @OID_AUTO, align 4
  %31 = load i32, i32* @CTLTYPE_STRING, align 4
  %32 = load i32, i32* @CTLFLAG_RD, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %37 = load i32, i32* @ieee80211_ratectl_sysctl_stats, align 4
  %38 = call i32 @SYSCTL_ADD_PROC(i32 %25, i32 %29, i32 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %35, %struct.ieee80211vap* %36, i32 0, i32 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ieee80211_ratectl_set(%struct.ieee80211vap*, i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, %struct.ieee80211vap*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
