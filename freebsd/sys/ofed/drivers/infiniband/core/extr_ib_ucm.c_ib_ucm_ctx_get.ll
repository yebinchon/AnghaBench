; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_ucm.c_ib_ucm_ctx_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_ucm.c_ib_ucm_ctx_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucm_context = type { i32, %struct.ib_ucm_file* }
%struct.ib_ucm_file = type { i32 }

@ctx_id_mutex = common dso_local global i32 0, align 4
@ctx_id_table = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_ucm_context* (%struct.ib_ucm_file*, i32)* @ib_ucm_ctx_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_ucm_context* @ib_ucm_ctx_get(%struct.ib_ucm_file* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_ucm_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_ucm_context*, align 8
  store %struct.ib_ucm_file* %0, %struct.ib_ucm_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @mutex_lock(i32* @ctx_id_mutex)
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.ib_ucm_context* @idr_find(i32* @ctx_id_table, i32 %7)
  store %struct.ib_ucm_context* %8, %struct.ib_ucm_context** %5, align 8
  %9 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %5, align 8
  %10 = icmp ne %struct.ib_ucm_context* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.ib_ucm_context* @ERR_PTR(i32 %13)
  store %struct.ib_ucm_context* %14, %struct.ib_ucm_context** %5, align 8
  br label %30

15:                                               ; preds = %2
  %16 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %5, align 8
  %17 = getelementptr inbounds %struct.ib_ucm_context, %struct.ib_ucm_context* %16, i32 0, i32 1
  %18 = load %struct.ib_ucm_file*, %struct.ib_ucm_file** %17, align 8
  %19 = load %struct.ib_ucm_file*, %struct.ib_ucm_file** %3, align 8
  %20 = icmp ne %struct.ib_ucm_file* %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.ib_ucm_context* @ERR_PTR(i32 %23)
  store %struct.ib_ucm_context* %24, %struct.ib_ucm_context** %5, align 8
  br label %29

25:                                               ; preds = %15
  %26 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %5, align 8
  %27 = getelementptr inbounds %struct.ib_ucm_context, %struct.ib_ucm_context* %26, i32 0, i32 0
  %28 = call i32 @atomic_inc(i32* %27)
  br label %29

29:                                               ; preds = %25, %21
  br label %30

30:                                               ; preds = %29, %11
  %31 = call i32 @mutex_unlock(i32* @ctx_id_mutex)
  %32 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %5, align 8
  ret %struct.ib_ucm_context* %32
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ib_ucm_context* @idr_find(i32*, i32) #1

declare dso_local %struct.ib_ucm_context* @ERR_PTR(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
