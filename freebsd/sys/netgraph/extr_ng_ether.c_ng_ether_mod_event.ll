; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ether.c_ng_ether_mod_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ether.c_ng_ether_mod_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ng_ether_attach_p = common dso_local global i32* null, align 8
@EEXIST = common dso_local global i32 0, align 4
@ng_ether_attach = common dso_local global i32* null, align 8
@ng_ether_detach = common dso_local global i32* null, align 8
@ng_ether_detach_p = common dso_local global i32* null, align 8
@ng_ether_output = common dso_local global i32* null, align 8
@ng_ether_output_p = common dso_local global i32* null, align 8
@ng_ether_input = common dso_local global i32* null, align 8
@ng_ether_input_p = common dso_local global i32* null, align 8
@ng_ether_input_orphan = common dso_local global i32* null, align 8
@ng_ether_input_orphan_p = common dso_local global i32* null, align 8
@ng_ether_link_state = common dso_local global i32* null, align 8
@ng_ether_link_state_p = common dso_local global i32* null, align 8
@ifnet_arrival_event = common dso_local global i32 0, align 4
@ng_ether_ifnet_arrival_event = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@ng_ether_ifnet_arrival_cookie = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @ng_ether_mod_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ether_mod_event(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %29 [
    i32 129, label %9
    i32 128, label %25
  ]

9:                                                ; preds = %3
  %10 = load i32*, i32** @ng_ether_attach_p, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* @EEXIST, align 4
  store i32 %13, i32* %7, align 4
  br label %31

14:                                               ; preds = %9
  %15 = load i32*, i32** @ng_ether_attach, align 8
  store i32* %15, i32** @ng_ether_attach_p, align 8
  %16 = load i32*, i32** @ng_ether_detach, align 8
  store i32* %16, i32** @ng_ether_detach_p, align 8
  %17 = load i32*, i32** @ng_ether_output, align 8
  store i32* %17, i32** @ng_ether_output_p, align 8
  %18 = load i32*, i32** @ng_ether_input, align 8
  store i32* %18, i32** @ng_ether_input_p, align 8
  %19 = load i32*, i32** @ng_ether_input_orphan, align 8
  store i32* %19, i32** @ng_ether_input_orphan_p, align 8
  %20 = load i32*, i32** @ng_ether_link_state, align 8
  store i32* %20, i32** @ng_ether_link_state_p, align 8
  %21 = load i32, i32* @ifnet_arrival_event, align 4
  %22 = load i32, i32* @ng_ether_ifnet_arrival_event, align 4
  %23 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %24 = call i32 @EVENTHANDLER_REGISTER(i32 %21, i32 %22, i32* null, i32 %23)
  store i32 %24, i32* @ng_ether_ifnet_arrival_cookie, align 4
  br label %31

25:                                               ; preds = %3
  %26 = load i32, i32* @ifnet_arrival_event, align 4
  %27 = load i32, i32* @ng_ether_ifnet_arrival_cookie, align 4
  %28 = call i32 @EVENTHANDLER_DEREGISTER(i32 %26, i32 %27)
  store i32* null, i32** @ng_ether_attach_p, align 8
  store i32* null, i32** @ng_ether_detach_p, align 8
  store i32* null, i32** @ng_ether_output_p, align 8
  store i32* null, i32** @ng_ether_input_p, align 8
  store i32* null, i32** @ng_ether_input_orphan_p, align 8
  store i32* null, i32** @ng_ether_link_state_p, align 8
  br label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %25, %14, %12
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
