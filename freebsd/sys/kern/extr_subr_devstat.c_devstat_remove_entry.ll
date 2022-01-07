; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_devstat.c_devstat_remove_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_devstat.c_devstat_remove_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devstatlist = type { i32 }
%struct.devstat = type { i32, i32 }

@devstat_mutex = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@device_statq = common dso_local global %struct.devstatlist zeroinitializer, align 4
@devstat_num_devs = common dso_local global i32 0, align 4
@devstat = common dso_local global i32 0, align 4
@dev_links = common dso_local global i32 0, align 4
@devstat_generation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devstat_remove_entry(%struct.devstat* %0) #0 {
  %2 = alloca %struct.devstat*, align 8
  %3 = alloca %struct.devstatlist*, align 8
  store %struct.devstat* %0, %struct.devstat** %2, align 8
  %4 = load i32, i32* @MA_NOTOWNED, align 4
  %5 = call i32 @mtx_assert(i32* @devstat_mutex, i32 %4)
  %6 = load %struct.devstat*, %struct.devstat** %2, align 8
  %7 = icmp eq %struct.devstat* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %32

9:                                                ; preds = %1
  %10 = call i32 @mtx_lock(i32* @devstat_mutex)
  store %struct.devstatlist* @device_statq, %struct.devstatlist** %3, align 8
  %11 = load %struct.devstat*, %struct.devstat** %2, align 8
  %12 = getelementptr inbounds %struct.devstat, %struct.devstat* %11, i32 0, i32 1
  %13 = call i32 @atomic_add_acq_int(i32* %12, i32 1)
  %14 = load %struct.devstat*, %struct.devstat** %2, align 8
  %15 = getelementptr inbounds %struct.devstat, %struct.devstat* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %26

18:                                               ; preds = %9
  %19 = load i32, i32* @devstat_num_devs, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* @devstat_num_devs, align 4
  %21 = load %struct.devstatlist*, %struct.devstatlist** %3, align 8
  %22 = load %struct.devstat*, %struct.devstat** %2, align 8
  %23 = load i32, i32* @devstat, align 4
  %24 = load i32, i32* @dev_links, align 4
  %25 = call i32 @STAILQ_REMOVE(%struct.devstatlist* %21, %struct.devstat* %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %18, %9
  %27 = load %struct.devstat*, %struct.devstat** %2, align 8
  %28 = call i32 @devstat_free(%struct.devstat* %27)
  %29 = load i32, i32* @devstat_generation, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @devstat_generation, align 4
  %31 = call i32 @mtx_unlock(i32* @devstat_mutex)
  br label %32

32:                                               ; preds = %26, %8
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @atomic_add_acq_int(i32*, i32) #1

declare dso_local i32 @STAILQ_REMOVE(%struct.devstatlist*, %struct.devstat*, i32, i32) #1

declare dso_local i32 @devstat_free(%struct.devstat*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
