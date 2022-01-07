; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_event.c_g_waitidle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_event.c_g_waitidle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@g_eventlock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"GEOM events\00", align 1
@g_events = common dso_local global i32 0, align 4
@g_pending_events = common dso_local global i32 0, align 4
@PPAUSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"g_waitidle\00", align 1
@hz = common dso_local global i32 0, align 4
@TDP_GEOM = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_waitidle() #0 {
  %1 = call i32 (...) @g_topology_assert_not()
  %2 = call i32 @mtx_lock(i32* @g_eventlock)
  %3 = call i32 @TSWAIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %4

4:                                                ; preds = %8, %0
  %5 = call i32 @TAILQ_EMPTY(i32* @g_events)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = load i32, i32* @PPAUSE, align 4
  %10 = load i32, i32* @hz, align 4
  %11 = sdiv i32 %10, 5
  %12 = call i32 @msleep(i32* @g_pending_events, i32* @g_eventlock, i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  br label %4

13:                                               ; preds = %4
  %14 = call i32 @TSUNWAIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @mtx_unlock(i32* @g_eventlock)
  %16 = load i32, i32* @TDP_GEOM, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  ret void
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TSWAIT(i8*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @TSUNWAIT(i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
