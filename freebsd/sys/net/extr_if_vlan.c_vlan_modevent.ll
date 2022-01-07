; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vlan.c_vlan_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vlan.c_vlan_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ifnet_departure_event = common dso_local global i32 0, align 4
@vlan_ifdetach = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@ifdetach_tag = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@iflladdr_event = common dso_local global i32 0, align 4
@vlan_iflladdr = common dso_local global i32 0, align 4
@iflladdr_tag = common dso_local global i32* null, align 8
@vlan_input = common dso_local global i32* null, align 8
@vlan_input_p = common dso_local global i32* null, align 8
@vlan_link_state = common dso_local global i32* null, align 8
@vlan_link_state_p = common dso_local global i32* null, align 8
@vlan_trunk_capabilities = common dso_local global i32* null, align 8
@vlan_trunk_cap_p = common dso_local global i32* null, align 8
@vlan_trunkdev = common dso_local global i32* null, align 8
@vlan_trunkdev_p = common dso_local global i32* null, align 8
@vlan_cookie = common dso_local global i32* null, align 8
@vlan_cookie_p = common dso_local global i32* null, align 8
@vlan_setcookie = common dso_local global i32* null, align 8
@vlan_setcookie_p = common dso_local global i32* null, align 8
@vlan_tag = common dso_local global i32* null, align 8
@vlan_tag_p = common dso_local global i32* null, align 8
@vlan_pcp = common dso_local global i32 0, align 4
@vlan_pcp_p = common dso_local global i32 0, align 4
@vlan_devat = common dso_local global i32* null, align 8
@vlan_devat_p = common dso_local global i32* null, align 8
@vlanname = common dso_local global i32 0, align 4
@vlan_clone_match = common dso_local global i32 0, align 4
@vlan_clone_create = common dso_local global i32 0, align 4
@vlan_clone_destroy = common dso_local global i32 0, align 4
@vlan_cloner = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"vlan: initialized, using hash tables with chaining\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"vlan: unloaded\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @vlan_modevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %63 [
    i32 129, label %9
    i32 128, label %48
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @ifnet_departure_event, align 4
  %11 = load i32, i32* @vlan_ifdetach, align 4
  %12 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %13 = call i32* @EVENTHANDLER_REGISTER(i32 %10, i32 %11, i32* null, i32 %12)
  store i32* %13, i32** @ifdetach_tag, align 8
  %14 = load i32*, i32** @ifdetach_tag, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* @ENOMEM, align 4
  store i32 %17, i32* %4, align 4
  br label %66

18:                                               ; preds = %9
  %19 = load i32, i32* @iflladdr_event, align 4
  %20 = load i32, i32* @vlan_iflladdr, align 4
  %21 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %22 = call i32* @EVENTHANDLER_REGISTER(i32 %19, i32 %20, i32* null, i32 %21)
  store i32* %22, i32** @iflladdr_tag, align 8
  %23 = load i32*, i32** @iflladdr_tag, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  store i32 %26, i32* %4, align 4
  br label %66

27:                                               ; preds = %18
  %28 = call i32 (...) @VLAN_LOCKING_INIT()
  %29 = load i32*, i32** @vlan_input, align 8
  store i32* %29, i32** @vlan_input_p, align 8
  %30 = load i32*, i32** @vlan_link_state, align 8
  store i32* %30, i32** @vlan_link_state_p, align 8
  %31 = load i32*, i32** @vlan_trunk_capabilities, align 8
  store i32* %31, i32** @vlan_trunk_cap_p, align 8
  %32 = load i32*, i32** @vlan_trunkdev, align 8
  store i32* %32, i32** @vlan_trunkdev_p, align 8
  %33 = load i32*, i32** @vlan_cookie, align 8
  store i32* %33, i32** @vlan_cookie_p, align 8
  %34 = load i32*, i32** @vlan_setcookie, align 8
  store i32* %34, i32** @vlan_setcookie_p, align 8
  %35 = load i32*, i32** @vlan_tag, align 8
  store i32* %35, i32** @vlan_tag_p, align 8
  %36 = load i32, i32* @vlan_pcp, align 4
  store i32 %36, i32* @vlan_pcp_p, align 4
  %37 = load i32*, i32** @vlan_devat, align 8
  store i32* %37, i32** @vlan_devat_p, align 8
  %38 = load i32, i32* @vlanname, align 4
  %39 = load i32, i32* @vlan_clone_match, align 4
  %40 = load i32, i32* @vlan_clone_create, align 4
  %41 = load i32, i32* @vlan_clone_destroy, align 4
  %42 = call i32 @if_clone_advanced(i32 %38, i32 0, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* @vlan_cloner, align 4
  %43 = load i32, i32* @bootverbose, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %27
  %46 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %27
  br label %65

48:                                               ; preds = %3
  %49 = load i32, i32* @vlan_cloner, align 4
  %50 = call i32 @if_clone_detach(i32 %49)
  %51 = load i32, i32* @ifnet_departure_event, align 4
  %52 = load i32*, i32** @ifdetach_tag, align 8
  %53 = call i32 @EVENTHANDLER_DEREGISTER(i32 %51, i32* %52)
  %54 = load i32, i32* @iflladdr_event, align 4
  %55 = load i32*, i32** @iflladdr_tag, align 8
  %56 = call i32 @EVENTHANDLER_DEREGISTER(i32 %54, i32* %55)
  store i32* null, i32** @vlan_input_p, align 8
  store i32* null, i32** @vlan_link_state_p, align 8
  store i32* null, i32** @vlan_trunk_cap_p, align 8
  store i32* null, i32** @vlan_trunkdev_p, align 8
  store i32* null, i32** @vlan_tag_p, align 8
  store i32* null, i32** @vlan_cookie_p, align 8
  store i32* null, i32** @vlan_setcookie_p, align 8
  store i32* null, i32** @vlan_devat_p, align 8
  %57 = call i32 (...) @VLAN_LOCKING_DESTROY()
  %58 = load i32, i32* @bootverbose, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %48
  br label %65

63:                                               ; preds = %3
  %64 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %64, i32* %4, align 4
  br label %66

65:                                               ; preds = %62, %47
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %63, %25, %16
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32* @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

declare dso_local i32 @VLAN_LOCKING_INIT(...) #1

declare dso_local i32 @if_clone_advanced(i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @if_clone_detach(i32) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32*) #1

declare dso_local i32 @VLAN_LOCKING_DESTROY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
