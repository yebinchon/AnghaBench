; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_unp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_unp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"unpcb\00", align 1
@UMA_ALIGN_CACHE = common dso_local global i32 0, align 4
@unp_zone = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"unp_init\00", align 1
@maxsockets = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"kern.ipc.maxsockets limit reached\00", align 1
@maxsockets_change = common dso_local global i32 0, align 4
@unp_zone_change = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@unp_dhead = common dso_local global i32 0, align 4
@unp_shead = common dso_local global i32 0, align 4
@unp_sphead = common dso_local global i32 0, align 4
@unp_defers = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@unp_gc_task = common dso_local global i32 0, align 4
@unp_gc = common dso_local global i32 0, align 4
@unp_defer_task = common dso_local global i32 0, align 4
@unp_process_defers = common dso_local global i32 0, align 4
@curvnet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @unp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unp_init() #0 {
  %1 = load i32, i32* @UMA_ALIGN_CACHE, align 4
  %2 = call i32* @uma_zcreate(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %1, i32 0)
  store i32* %2, i32** @unp_zone, align 8
  %3 = load i32*, i32** @unp_zone, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @panic(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i32*, i32** @unp_zone, align 8
  %9 = load i32, i32* @maxsockets, align 4
  %10 = call i32 @uma_zone_set_max(i32* %8, i32 %9)
  %11 = load i32*, i32** @unp_zone, align 8
  %12 = call i32 @uma_zone_set_warning(i32* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i32, i32* @maxsockets_change, align 4
  %14 = load i32, i32* @unp_zone_change, align 4
  %15 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %16 = call i32 @EVENTHANDLER_REGISTER(i32 %13, i32 %14, i32* null, i32 %15)
  %17 = call i32 @LIST_INIT(i32* @unp_dhead)
  %18 = call i32 @LIST_INIT(i32* @unp_shead)
  %19 = call i32 @LIST_INIT(i32* @unp_sphead)
  %20 = call i32 @SLIST_INIT(i32* @unp_defers)
  %21 = load i32, i32* @taskqueue_thread, align 4
  %22 = load i32, i32* @unp_gc, align 4
  %23 = call i32 @TIMEOUT_TASK_INIT(i32 %21, i32* @unp_gc_task, i32 0, i32 %22, i32* null)
  %24 = load i32, i32* @unp_process_defers, align 4
  %25 = call i32 @TASK_INIT(i32* @unp_defer_task, i32 0, i32 %24, i32* null)
  %26 = call i32 (...) @UNP_LINK_LOCK_INIT()
  %27 = call i32 (...) @UNP_DEFERRED_LOCK_INIT()
  ret void
}

declare dso_local i32* @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @uma_zone_set_max(i32*, i32) #1

declare dso_local i32 @uma_zone_set_warning(i32*, i8*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @TIMEOUT_TASK_INIT(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, i32*) #1

declare dso_local i32 @UNP_LINK_LOCK_INIT(...) #1

declare dso_local i32 @UNP_DEFERRED_LOCK_INIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
