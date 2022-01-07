; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_setwmeparams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_setwmeparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32 }
%struct.wmeParams = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@IEEE80211_MSG_WME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"set %s (%s) [acm %u aifsn %u logcwmin %u logcwmax %u txop %u]\0A\00", align 1
@ieee80211_wme_acnames = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*, i8*, i32, %struct.wmeParams*, %struct.TYPE_4__*)* @setwmeparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setwmeparams(%struct.ieee80211vap* %0, i8* %1, i32 %2, %struct.wmeParams* %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wmeParams*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.wmeParams* %3, %struct.wmeParams** %9, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %10, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.wmeParams*, %struct.wmeParams** %9, align 8
  %15 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load %struct.wmeParams*, %struct.wmeParams** %9, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %18 = call i32 @_setifsparams(%struct.wmeParams* %16, %struct.TYPE_4__* %17)
  %19 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %20 = load i32, i32* @IEEE80211_MSG_WME, align 4
  %21 = load i32*, i32** @ieee80211_wme_acnames, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.wmeParams*, %struct.wmeParams** %9, align 8
  %28 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wmeParams*, %struct.wmeParams** %9, align 8
  %31 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.wmeParams*, %struct.wmeParams** %9, align 8
  %34 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.wmeParams*, %struct.wmeParams** %9, align 8
  %37 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wmeParams*, %struct.wmeParams** %9, align 8
  %40 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @IEEE80211_DPRINTF(%struct.ieee80211vap* %19, i32 %20, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %26, i32 %29, i32 %32, i32 %35, i32 %38, i32 %41)
  ret void
}

declare dso_local i32 @_setifsparams(%struct.wmeParams*, %struct.TYPE_4__*) #1

declare dso_local i32 @IEEE80211_DPRINTF(%struct.ieee80211vap*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
