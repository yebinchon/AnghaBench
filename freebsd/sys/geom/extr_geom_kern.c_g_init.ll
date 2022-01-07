; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_kern.c_g_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_kern.c_g_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"g_ignition\00", align 1
@topology_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"GEOM topology\00", align 1
@g_event_procbody = common dso_local global i32 0, align 4
@g_proc = common dso_local global i32 0, align 4
@g_event_td = common dso_local global i32 0, align 4
@RFHIGHPID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"geom\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"g_event\00", align 1
@g_up_procbody = common dso_local global i32 0, align 4
@g_up_td = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"g_up\00", align 1
@g_down_procbody = common dso_local global i32 0, align 4
@g_down_td = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"g_down\00", align 1
@shutdown_pre_sync = common dso_local global i32 0, align 4
@geom_shutdown = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_FIRST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_init() #0 {
  %1 = load i32, i32* @G_T_TOPOLOGY, align 4
  %2 = call i32 @g_trace(i32 %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @sx_init(i32* @topology_lock, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 (...) @g_io_init()
  %5 = call i32 (...) @g_event_init()
  %6 = call i32 (...) @g_ctl_init()
  %7 = load i32, i32* @g_event_procbody, align 4
  %8 = load i32, i32* @RFHIGHPID, align 4
  %9 = call i32 @kproc_kthread_add(i32 %7, i32* null, i32* @g_proc, i32* @g_event_td, i32 %8, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %10 = load i32, i32* @g_up_procbody, align 4
  %11 = load i32, i32* @RFHIGHPID, align 4
  %12 = call i32 @kproc_kthread_add(i32 %10, i32* null, i32* @g_proc, i32* @g_up_td, i32 %11, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %13 = load i32, i32* @g_down_procbody, align 4
  %14 = load i32, i32* @RFHIGHPID, align 4
  %15 = call i32 @kproc_kthread_add(i32 %13, i32* null, i32* @g_proc, i32* @g_down_td, i32 %14, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %16 = load i32, i32* @shutdown_pre_sync, align 4
  %17 = load i32, i32* @geom_shutdown, align 4
  %18 = load i32, i32* @SHUTDOWN_PRI_FIRST, align 4
  %19 = call i32 @EVENTHANDLER_REGISTER(i32 %16, i32 %17, i32* null, i32 %18)
  ret void
}

declare dso_local i32 @g_trace(i32, i8*) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @g_io_init(...) #1

declare dso_local i32 @g_event_init(...) #1

declare dso_local i32 @g_ctl_init(...) #1

declare dso_local i32 @kproc_kthread_add(i32, i32*, i32*, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
