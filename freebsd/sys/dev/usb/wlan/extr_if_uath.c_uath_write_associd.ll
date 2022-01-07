; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_write_associd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_write_associd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uath_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.ieee80211vap = type { i32 }
%struct.ieee80211_node = type { i32, i32 }
%struct.uath_cmd_set_associd = type { i32, i8*, i8*, i8* }

@WDCMSG_WRITE_ASSOCID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uath_softc*)* @uath_write_associd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uath_write_associd(%struct.uath_softc* %0) #0 {
  %2 = alloca %struct.uath_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.uath_cmd_set_associd, align 8
  store %struct.uath_softc* %0, %struct.uath_softc** %2, align 8
  %7 = load %struct.uath_softc*, %struct.uath_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %7, i32 0, i32 0
  store %struct.ieee80211com* %8, %struct.ieee80211com** %3, align 8
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %9, i32 0, i32 0
  %11 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %10)
  store %struct.ieee80211vap* %11, %struct.ieee80211vap** %4, align 8
  %12 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ieee80211_node* @ieee80211_ref_node(i32 %14)
  store %struct.ieee80211_node* %15, %struct.ieee80211_node** %5, align 8
  %16 = call i32 @memset(%struct.uath_cmd_set_associd* %6, i32 0, i32 32)
  %17 = call i8* @htobe32(i32 1)
  %18 = getelementptr inbounds %struct.uath_cmd_set_associd, %struct.uath_cmd_set_associd* %6, i32 0, i32 3
  store i8* %17, i8** %18, align 8
  %19 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @htobe32(i32 %21)
  %23 = getelementptr inbounds %struct.uath_cmd_set_associd, %struct.uath_cmd_set_associd* %6, i32 0, i32 2
  store i8* %22, i8** %23, align 8
  %24 = call i8* @htobe32(i32 59)
  %25 = getelementptr inbounds %struct.uath_cmd_set_associd, %struct.uath_cmd_set_associd* %6, i32 0, i32 1
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.uath_cmd_set_associd, %struct.uath_cmd_set_associd* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IEEE80211_ADDR_COPY(i32 %27, i32 %30)
  %32 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %33 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %32)
  %34 = load %struct.uath_softc*, %struct.uath_softc** %2, align 8
  %35 = load i32, i32* @WDCMSG_WRITE_ASSOCID, align 4
  %36 = call i32 @uath_cmd_write(%struct.uath_softc* %34, i32 %35, %struct.uath_cmd_set_associd* %6, i32 32, i32 0)
  ret i32 %36
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.ieee80211_node* @ieee80211_ref_node(i32) #1

declare dso_local i32 @memset(%struct.uath_cmd_set_associd*, i32, i32) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

declare dso_local i32 @uath_cmd_write(%struct.uath_softc*, i32, %struct.uath_cmd_set_associd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
