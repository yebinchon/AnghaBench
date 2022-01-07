; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_alq.c_ald_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_alq.c_ald_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alq = type { i32 }

@ald_shutingdown = common dso_local global i32 0, align 4
@ald_queues = common dso_local global i32 0, align 4
@aq_link = common dso_local global i32 0, align 4
@ald_active = common dso_local global i32 0, align 4
@ald_proc = common dso_local global i32 0, align 4
@ald_mtx = common dso_local global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"aldslp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ald_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ald_shutdown(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.alq*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @ALD_LOCK()
  store i32 1, i32* @ald_shutingdown, align 4
  br label %7

7:                                                ; preds = %10, %2
  %8 = call %struct.alq* @LIST_FIRST(i32* @ald_queues)
  store %struct.alq* %8, %struct.alq** %5, align 8
  %9 = icmp ne %struct.alq* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load %struct.alq*, %struct.alq** %5, align 8
  %12 = load i32, i32* @aq_link, align 4
  %13 = call i32 @LIST_REMOVE(%struct.alq* %11, i32 %12)
  %14 = call i32 (...) @ALD_UNLOCK()
  %15 = load %struct.alq*, %struct.alq** %5, align 8
  %16 = call i32 @alq_shutdown(%struct.alq* %15)
  %17 = call i32 (...) @ALD_LOCK()
  br label %7

18:                                               ; preds = %7
  %19 = call i32 @wakeup(i32* @ald_active)
  %20 = load i32, i32* @ald_proc, align 4
  %21 = load i32, i32* @PWAIT, align 4
  %22 = call i32 @mtx_sleep(i32 %20, i32* @ald_mtx, i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  %23 = call i32 (...) @ALD_UNLOCK()
  ret void
}

declare dso_local i32 @ALD_LOCK(...) #1

declare dso_local %struct.alq* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.alq*, i32) #1

declare dso_local i32 @ALD_UNLOCK(...) #1

declare dso_local i32 @alq_shutdown(%struct.alq*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @mtx_sleep(i32, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
