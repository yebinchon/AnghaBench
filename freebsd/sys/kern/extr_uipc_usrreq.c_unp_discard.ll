; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_unp_discard.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_unp_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.unp_defer = type { %struct.file* }
%struct.thread = type { i32 }

@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@unp_defers = common dso_local global i32 0, align 4
@ud_link = common dso_local global i32 0, align 4
@unp_defers_count = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@unp_defer_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*)* @unp_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unp_discard(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.unp_defer*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = load %struct.file*, %struct.file** %2, align 8
  %5 = call i64 @unp_externalize_fp(%struct.file* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load i32, i32* @M_TEMP, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = call %struct.unp_defer* @malloc(i32 8, i32 %8, i32 %9)
  store %struct.unp_defer* %10, %struct.unp_defer** %3, align 8
  %11 = load %struct.file*, %struct.file** %2, align 8
  %12 = load %struct.unp_defer*, %struct.unp_defer** %3, align 8
  %13 = getelementptr inbounds %struct.unp_defer, %struct.unp_defer* %12, i32 0, i32 0
  store %struct.file* %11, %struct.file** %13, align 8
  %14 = call i32 (...) @UNP_DEFERRED_LOCK()
  %15 = load %struct.unp_defer*, %struct.unp_defer** %3, align 8
  %16 = load i32, i32* @ud_link, align 4
  %17 = call i32 @SLIST_INSERT_HEAD(i32* @unp_defers, %struct.unp_defer* %15, i32 %16)
  %18 = call i32 (...) @UNP_DEFERRED_UNLOCK()
  %19 = call i32 @atomic_add_int(i32* @unp_defers_count, i32 1)
  %20 = load i32, i32* @taskqueue_thread, align 4
  %21 = call i32 @taskqueue_enqueue(i32 %20, i32* @unp_defer_task)
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.file*, %struct.file** %2, align 8
  %24 = call i32 @closef(%struct.file* %23, %struct.thread* null)
  br label %25

25:                                               ; preds = %22, %7
  ret void
}

declare dso_local i64 @unp_externalize_fp(%struct.file*) #1

declare dso_local %struct.unp_defer* @malloc(i32, i32, i32) #1

declare dso_local i32 @UNP_DEFERRED_LOCK(...) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.unp_defer*, i32) #1

declare dso_local i32 @UNP_DEFERRED_UNLOCK(...) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @closef(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
