; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_dev.c_opal_heartbeat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_dev.c_opal_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opal_heartbeat_ms = common dso_local global i64 0, align 8
@OPAL_POLL_EVENTS = common dso_local global i32 0, align 4
@OPAL_EVENT_MSG_PENDING = common dso_local global i32 0, align 4
@opal_hb_proc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"opal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @opal_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opal_heartbeat() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @opal_heartbeat_ms, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @kproc_exit(i32 0)
  br label %6

6:                                                ; preds = %4, %0
  br label %7

7:                                                ; preds = %6, %17
  store i32 0, i32* %1, align 4
  %8 = load i32, i32* @OPAL_POLL_EVENTS, align 4
  %9 = call i32 @vtophys(i32* %1)
  %10 = call i32 @opal_call(i32 %8, i32 %9)
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @OPAL_EVENT_MSG_PENDING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = call i32 (...) @opal_handle_messages()
  br label %17

17:                                               ; preds = %15, %7
  %18 = load i32, i32* @opal_hb_proc, align 4
  %19 = load i64, i64* @opal_heartbeat_ms, align 8
  %20 = call i32 @MSEC_2_TICKS(i64 %19)
  %21 = call i32 @tsleep(i32 %18, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %7
}

declare dso_local i32 @kproc_exit(i32) #1

declare dso_local i32 @opal_call(i32, i32) #1

declare dso_local i32 @vtophys(i32*) #1

declare dso_local i32 @opal_handle_messages(...) #1

declare dso_local i32 @tsleep(i32, i32, i8*, i32) #1

declare dso_local i32 @MSEC_2_TICKS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
