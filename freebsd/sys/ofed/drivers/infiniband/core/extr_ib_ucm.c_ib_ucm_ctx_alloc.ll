; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_ucm.c_ib_ucm_ctx_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_ucm.c_ib_ucm_ctx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucm_context = type { i64, i32, i32, %struct.ib_ucm_file*, i32, i32 }
%struct.ib_ucm_file = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ctx_id_mutex = common dso_local global i32 0, align 4
@ctx_id_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_ucm_context* (%struct.ib_ucm_file*)* @ib_ucm_ctx_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_ucm_context* @ib_ucm_ctx_alloc(%struct.ib_ucm_file* %0) #0 {
  %2 = alloca %struct.ib_ucm_context*, align 8
  %3 = alloca %struct.ib_ucm_file*, align 8
  %4 = alloca %struct.ib_ucm_context*, align 8
  store %struct.ib_ucm_file* %0, %struct.ib_ucm_file** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.ib_ucm_context* @kzalloc(i32 32, i32 %5)
  store %struct.ib_ucm_context* %6, %struct.ib_ucm_context** %4, align 8
  %7 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %4, align 8
  %8 = icmp ne %struct.ib_ucm_context* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.ib_ucm_context* null, %struct.ib_ucm_context** %2, align 8
  br label %45

10:                                               ; preds = %1
  %11 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %4, align 8
  %12 = getelementptr inbounds %struct.ib_ucm_context, %struct.ib_ucm_context* %11, i32 0, i32 5
  %13 = call i32 @atomic_set(i32* %12, i32 1)
  %14 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %4, align 8
  %15 = getelementptr inbounds %struct.ib_ucm_context, %struct.ib_ucm_context* %14, i32 0, i32 4
  %16 = call i32 @init_completion(i32* %15)
  %17 = load %struct.ib_ucm_file*, %struct.ib_ucm_file** %3, align 8
  %18 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %4, align 8
  %19 = getelementptr inbounds %struct.ib_ucm_context, %struct.ib_ucm_context* %18, i32 0, i32 3
  store %struct.ib_ucm_file* %17, %struct.ib_ucm_file** %19, align 8
  %20 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %4, align 8
  %21 = getelementptr inbounds %struct.ib_ucm_context, %struct.ib_ucm_context* %20, i32 0, i32 2
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = call i32 @mutex_lock(i32* @ctx_id_mutex)
  %24 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %4, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i64 @idr_alloc(i32* @ctx_id_table, %struct.ib_ucm_context* %24, i32 0, i32 0, i32 %25)
  %27 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %4, align 8
  %28 = getelementptr inbounds %struct.ib_ucm_context, %struct.ib_ucm_context* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = call i32 @mutex_unlock(i32* @ctx_id_mutex)
  %30 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %4, align 8
  %31 = getelementptr inbounds %struct.ib_ucm_context, %struct.ib_ucm_context* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %10
  br label %42

35:                                               ; preds = %10
  %36 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %4, align 8
  %37 = getelementptr inbounds %struct.ib_ucm_context, %struct.ib_ucm_context* %36, i32 0, i32 1
  %38 = load %struct.ib_ucm_file*, %struct.ib_ucm_file** %3, align 8
  %39 = getelementptr inbounds %struct.ib_ucm_file, %struct.ib_ucm_file* %38, i32 0, i32 0
  %40 = call i32 @list_add_tail(i32* %37, i32* %39)
  %41 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %4, align 8
  store %struct.ib_ucm_context* %41, %struct.ib_ucm_context** %2, align 8
  br label %45

42:                                               ; preds = %34
  %43 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %4, align 8
  %44 = call i32 @kfree(%struct.ib_ucm_context* %43)
  store %struct.ib_ucm_context* null, %struct.ib_ucm_context** %2, align 8
  br label %45

45:                                               ; preds = %42, %35, %9
  %46 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %2, align 8
  ret %struct.ib_ucm_context* %46
}

declare dso_local %struct.ib_ucm_context* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @idr_alloc(i32*, %struct.ib_ucm_context*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ib_ucm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
