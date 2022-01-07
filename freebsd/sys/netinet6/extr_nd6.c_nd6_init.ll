; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V_nd6_onlink_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"nd6 onlink\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@V_nd6_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"nd6 list\00", align 1
@V_nd_prefix = common dso_local global i32 0, align 4
@V_nd6_slowtimo_ch = common dso_local global i32 0, align 4
@ND6_SLOWTIMER_INTERVAL = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@nd6_slowtimo = common dso_local global i32 0, align 4
@curvnet = common dso_local global i32 0, align 4
@V_nd6_timer_ch = common dso_local global i32 0, align 4
@nd6_timer = common dso_local global i32 0, align 4
@lle_event = common dso_local global i32 0, align 4
@nd6_lle_event = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@lle_event_eh = common dso_local global i8* null, align 8
@iflladdr_event = common dso_local global i32 0, align 4
@nd6_iflladdr = common dso_local global i32 0, align 4
@iflladdr_event_eh = common dso_local global i8* null, align 8
@ifnet_link_event = common dso_local global i32 0, align 4
@nd6_ifnet_link_event = common dso_local global i32 0, align 4
@ifnet_link_event_eh = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd6_init() #0 {
  %1 = load i32, i32* @MTX_DEF, align 4
  %2 = call i32 @mtx_init(i32* @V_nd6_onlink_mtx, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32 %1)
  %3 = call i32 @rw_init(i32* @V_nd6_lock, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 @LIST_INIT(i32* @V_nd_prefix)
  %5 = call i32 (...) @nd6_defrouter_init()
  %6 = call i32 @callout_init(i32* @V_nd6_slowtimo_ch, i32 0)
  %7 = load i32, i32* @ND6_SLOWTIMER_INTERVAL, align 4
  %8 = load i32, i32* @hz, align 4
  %9 = mul nsw i32 %7, %8
  %10 = load i32, i32* @nd6_slowtimo, align 4
  %11 = load i32, i32* @curvnet, align 4
  %12 = call i32 @callout_reset(i32* @V_nd6_slowtimo_ch, i32 %9, i32 %10, i32 %11)
  %13 = call i32 @callout_init(i32* @V_nd6_timer_ch, i32 0)
  %14 = load i32, i32* @hz, align 4
  %15 = load i32, i32* @nd6_timer, align 4
  %16 = load i32, i32* @curvnet, align 4
  %17 = call i32 @callout_reset(i32* @V_nd6_timer_ch, i32 %14, i32 %15, i32 %16)
  %18 = call i32 (...) @nd6_dad_init()
  %19 = load i32, i32* @curvnet, align 4
  %20 = call i64 @IS_DEFAULT_VNET(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %0
  %23 = load i32, i32* @lle_event, align 4
  %24 = load i32, i32* @nd6_lle_event, align 4
  %25 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %26 = call i8* @EVENTHANDLER_REGISTER(i32 %23, i32 %24, i32* null, i32 %25)
  store i8* %26, i8** @lle_event_eh, align 8
  %27 = load i32, i32* @iflladdr_event, align 4
  %28 = load i32, i32* @nd6_iflladdr, align 4
  %29 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %30 = call i8* @EVENTHANDLER_REGISTER(i32 %27, i32 %28, i32* null, i32 %29)
  store i8* %30, i8** @iflladdr_event_eh, align 8
  %31 = load i32, i32* @ifnet_link_event, align 4
  %32 = load i32, i32* @nd6_ifnet_link_event, align 4
  %33 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %34 = call i8* @EVENTHANDLER_REGISTER(i32 %31, i32 %32, i32* null, i32 %33)
  store i8* %34, i8** @ifnet_link_event_eh, align 8
  br label %35

35:                                               ; preds = %22, %0
  ret void
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @rw_init(i32*, i8*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @nd6_defrouter_init(...) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, i32) #1

declare dso_local i32 @nd6_dad_init(...) #1

declare dso_local i64 @IS_DEFAULT_VNET(i32) #1

declare dso_local i8* @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
