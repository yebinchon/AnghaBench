; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_rfcomm.c_ng_btsocket_rfcomm_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_rfcomm.c_ng_btsocket_rfcomm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curvnet = common dso_local global i32 0, align 4
@NG_BTSOCKET_WARN_LEVEL = common dso_local global i32 0, align 4
@ng_btsocket_rfcomm_debug_level = common dso_local global i32 0, align 4
@ng_btsocket_rfcomm_timo = common dso_local global i32 0, align 4
@ng_btsocket_rfcomm_task = common dso_local global i32 0, align 4
@ng_btsocket_rfcomm_sessions_task = common dso_local global i32 0, align 4
@ng_btsocket_rfcomm_sessions = common dso_local global i32 0, align 4
@ng_btsocket_rfcomm_sessions_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"btsocks_rfcomm_sessions_mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@ng_btsocket_rfcomm_sockets = common dso_local global i32 0, align 4
@ng_btsocket_rfcomm_sockets_mtx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"btsocks_rfcomm_sockets_mtx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ng_btsocket_rfcomm_init() #0 {
  %1 = load i32, i32* @curvnet, align 4
  %2 = call i32 @IS_DEFAULT_VNET(i32 %1)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %15

5:                                                ; preds = %0
  %6 = load i32, i32* @NG_BTSOCKET_WARN_LEVEL, align 4
  store i32 %6, i32* @ng_btsocket_rfcomm_debug_level, align 4
  store i32 60, i32* @ng_btsocket_rfcomm_timo, align 4
  %7 = load i32, i32* @ng_btsocket_rfcomm_sessions_task, align 4
  %8 = call i32 @TASK_INIT(i32* @ng_btsocket_rfcomm_task, i32 0, i32 %7, i32* null)
  %9 = call i32 @LIST_INIT(i32* @ng_btsocket_rfcomm_sessions)
  %10 = load i32, i32* @MTX_DEF, align 4
  %11 = call i32 @mtx_init(i32* @ng_btsocket_rfcomm_sessions_mtx, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* null, i32 %10)
  %12 = call i32 @LIST_INIT(i32* @ng_btsocket_rfcomm_sockets)
  %13 = load i32, i32* @MTX_DEF, align 4
  %14 = call i32 @mtx_init(i32* @ng_btsocket_rfcomm_sockets_mtx, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %13)
  br label %15

15:                                               ; preds = %5, %4
  ret void
}

declare dso_local i32 @IS_DEFAULT_VNET(i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, i32*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
