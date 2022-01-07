; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_mca_process_records.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_mca_process_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mca_internal = type { i32 }

@mca_lock = common dso_local global i32 0, align 4
@mca_pending = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@POLLED = common dso_local global i32 0, align 4
@cold = common dso_local global i32 0, align 4
@mca_tq = common dso_local global i32 0, align 4
@mca_resize_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mca_process_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mca_process_records(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mca_internal*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @mtx_lock_spin(i32* @mca_lock)
  br label %5

5:                                                ; preds = %8, %1
  %6 = call %struct.mca_internal* @STAILQ_FIRST(i32* @mca_pending)
  store %struct.mca_internal* %6, %struct.mca_internal** %3, align 8
  %7 = icmp ne %struct.mca_internal* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load i32, i32* @link, align 4
  %10 = call i32 @STAILQ_REMOVE_HEAD(i32* @mca_pending, i32 %9)
  %11 = load %struct.mca_internal*, %struct.mca_internal** %3, align 8
  %12 = getelementptr inbounds %struct.mca_internal, %struct.mca_internal* %11, i32 0, i32 0
  %13 = call i32 @mca_log(i32* %12)
  %14 = load %struct.mca_internal*, %struct.mca_internal** %3, align 8
  %15 = call i32 @mca_store_record(%struct.mca_internal* %14)
  br label %5

16:                                               ; preds = %5
  %17 = call i32 @mtx_unlock_spin(i32* @mca_lock)
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @POLLED, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 (...) @mca_resize_freelist()
  br label %30

23:                                               ; preds = %16
  %24 = load i32, i32* @cold, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @mca_tq, align 4
  %28 = call i32 @taskqueue_enqueue(i32 %27, i32* @mca_resize_task)
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %21
  ret void
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local %struct.mca_internal* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @mca_log(i32*) #1

declare dso_local i32 @mca_store_record(%struct.mca_internal*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @mca_resize_freelist(...) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
