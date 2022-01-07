; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_wlan_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_wlan_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bootverbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"wlan: <802.11 Link Layer>\0A\00", align 1
@bpf_track = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@wlan_bpfevent = common dso_local global i32 0, align 4
@iflladdr_event = common dso_local global i32 0, align 4
@wlan_iflladdr = common dso_local global i32 0, align 4
@wlan_ifllevent = common dso_local global i32 0, align 4
@wlanname = common dso_local global i32 0, align 4
@wlan_clone_create = common dso_local global i32 0, align 4
@wlan_clone_destroy = common dso_local global i32 0, align 4
@wlan_cloner = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @wlan_modevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %36 [
    i32 129, label %9
    i32 128, label %27
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @bootverbose, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %9
  %15 = load i32, i32* @bpf_track, align 4
  %16 = load i32, i32* @bpf_track, align 4
  %17 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %18 = call i32 @EVENTHANDLER_REGISTER(i32 %15, i32 %16, i32* null, i32 %17)
  store i32 %18, i32* @wlan_bpfevent, align 4
  %19 = load i32, i32* @iflladdr_event, align 4
  %20 = load i32, i32* @wlan_iflladdr, align 4
  %21 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %22 = call i32 @EVENTHANDLER_REGISTER(i32 %19, i32 %20, i32* null, i32 %21)
  store i32 %22, i32* @wlan_ifllevent, align 4
  %23 = load i32, i32* @wlanname, align 4
  %24 = load i32, i32* @wlan_clone_create, align 4
  %25 = load i32, i32* @wlan_clone_destroy, align 4
  %26 = call i32 @if_clone_simple(i32 %23, i32 %24, i32 %25, i32 0)
  store i32 %26, i32* @wlan_cloner, align 4
  store i32 0, i32* %4, align 4
  br label %38

27:                                               ; preds = %3
  %28 = load i32, i32* @wlan_cloner, align 4
  %29 = call i32 @if_clone_detach(i32 %28)
  %30 = load i32, i32* @bpf_track, align 4
  %31 = load i32, i32* @wlan_bpfevent, align 4
  %32 = call i32 @EVENTHANDLER_DEREGISTER(i32 %30, i32 %31)
  %33 = load i32, i32* @iflladdr_event, align 4
  %34 = load i32, i32* @wlan_ifllevent, align 4
  %35 = call i32 @EVENTHANDLER_DEREGISTER(i32 %33, i32 %34)
  store i32 0, i32* %4, align 4
  br label %38

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %27, %14
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

declare dso_local i32 @if_clone_simple(i32, i32, i32, i32) #1

declare dso_local i32 @if_clone_detach(i32) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
