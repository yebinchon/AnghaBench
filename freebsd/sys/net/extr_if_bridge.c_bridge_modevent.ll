; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bridge_dummynet = common dso_local global i32* null, align 8
@bridge_dn_p = common dso_local global i32* null, align 8
@ifnet_departure_event = common dso_local global i32 0, align 4
@bridge_ifdetach = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@bridge_detach_cookie = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @bridge_modevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %19 [
    i32 129, label %9
    i32 128, label %15
  ]

9:                                                ; preds = %3
  %10 = load i32*, i32** @bridge_dummynet, align 8
  store i32* %10, i32** @bridge_dn_p, align 8
  %11 = load i32, i32* @ifnet_departure_event, align 4
  %12 = load i32, i32* @bridge_ifdetach, align 4
  %13 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %14 = call i32 @EVENTHANDLER_REGISTER(i32 %11, i32 %12, i32* null, i32 %13)
  store i32 %14, i32* @bridge_detach_cookie, align 4
  br label %21

15:                                               ; preds = %3
  %16 = load i32, i32* @ifnet_departure_event, align 4
  %17 = load i32, i32* @bridge_detach_cookie, align 4
  %18 = call i32 @EVENTHANDLER_DEREGISTER(i32 %16, i32 %17)
  store i32* null, i32** @bridge_dn_p, align 8
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %20, i32* %4, align 4
  br label %22

21:                                               ; preds = %15, %9
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %19
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
