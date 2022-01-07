; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_newassoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_newassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.otus_softc* }
%struct.otus_softc = type { i32 }
%struct.otus_node = type { i64, i64, i64 }

@OTUS_DEBUG_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"new assoc isnew=%d addr=%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @otus_newassoc(%struct.ieee80211_node* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.otus_softc*, align 8
  %7 = alloca %struct.otus_node*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %8, i32 0, i32 1
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  store %struct.ieee80211com* %10, %struct.ieee80211com** %5, align 8
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 0
  %13 = load %struct.otus_softc*, %struct.otus_softc** %12, align 8
  store %struct.otus_softc* %13, %struct.otus_softc** %6, align 8
  %14 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %15 = call %struct.otus_node* @OTUS_NODE(%struct.ieee80211_node* %14)
  store %struct.otus_node* %15, %struct.otus_node** %7, align 8
  %16 = load %struct.otus_softc*, %struct.otus_softc** %6, align 8
  %17 = load i32, i32* @OTUS_DEBUG_STATE, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ether_sprintf(i32 %21)
  %23 = call i32 @OTUS_DPRINTF(%struct.otus_softc* %16, i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22)
  %24 = load %struct.otus_node*, %struct.otus_node** %7, align 8
  %25 = getelementptr inbounds %struct.otus_node, %struct.otus_node* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.otus_node*, %struct.otus_node** %7, align 8
  %27 = getelementptr inbounds %struct.otus_node, %struct.otus_node* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.otus_node*, %struct.otus_node** %7, align 8
  %29 = getelementptr inbounds %struct.otus_node, %struct.otus_node* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  ret void
}

declare dso_local %struct.otus_node* @OTUS_NODE(%struct.ieee80211_node*) #1

declare dso_local i32 @OTUS_DPRINTF(%struct.otus_softc*, i32, i8*, i32, i32) #1

declare dso_local i32 @ether_sprintf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
