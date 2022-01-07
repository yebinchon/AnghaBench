; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_umem.c_ib_umem_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_umem.c_ib_umem_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_umem = type { i64, i32, %struct.mm_struct*, i32, %struct.ib_ucontext*, i64 }
%struct.mm_struct = type { i64, i32 }
%struct.ib_ucontext = type { i64, i32 }
%struct.task_struct = type { i32 }

@PIDTYPE_PID = common dso_local global i32 0, align 4
@ib_umem_account = common dso_local global i32 0, align 4
@ib_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_umem_release(%struct.ib_umem* %0) #0 {
  %2 = alloca %struct.ib_umem*, align 8
  %3 = alloca %struct.ib_ucontext*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  store %struct.ib_umem* %0, %struct.ib_umem** %2, align 8
  %7 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %8 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %7, i32 0, i32 4
  %9 = load %struct.ib_ucontext*, %struct.ib_ucontext** %8, align 8
  store %struct.ib_ucontext* %9, %struct.ib_ucontext** %3, align 8
  %10 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %11 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %16 = call i32 @ib_umem_odp_release(%struct.ib_umem* %15)
  br label %91

17:                                               ; preds = %1
  %18 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %19 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %18, i32 0, i32 4
  %20 = load %struct.ib_ucontext*, %struct.ib_ucontext** %19, align 8
  %21 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %24 = call i32 @__ib_umem_release(i32 %22, %struct.ib_umem* %23, i32 1)
  %25 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %26 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @PIDTYPE_PID, align 4
  %29 = call %struct.task_struct* @get_pid_task(i32 %27, i32 %28)
  store %struct.task_struct* %29, %struct.task_struct** %5, align 8
  %30 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %31 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @put_pid(i32 %32)
  %34 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %35 = icmp ne %struct.task_struct* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %17
  br label %88

37:                                               ; preds = %17
  %38 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %39 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %38)
  store %struct.mm_struct* %39, %struct.mm_struct** %4, align 8
  %40 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %41 = call i32 @put_task_struct(%struct.task_struct* %40)
  %42 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %43 = icmp ne %struct.mm_struct* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %88

45:                                               ; preds = %37
  %46 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %47 = call i64 @ib_umem_num_pages(%struct.ib_umem* %46)
  store i64 %47, i64* %6, align 8
  %48 = load %struct.ib_ucontext*, %struct.ib_ucontext** %3, align 8
  %49 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %45
  %53 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %54 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %53, i32 0, i32 1
  %55 = call i32 @down_write_trylock(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %52
  %58 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %59 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %58, i32 0, i32 1
  %60 = load i32, i32* @ib_umem_account, align 4
  %61 = call i32 @INIT_WORK(i32* %59, i32 %60)
  %62 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %63 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %64 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %63, i32 0, i32 2
  store %struct.mm_struct* %62, %struct.mm_struct** %64, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %67 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* @ib_wq, align 4
  %69 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %70 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %69, i32 0, i32 1
  %71 = call i32 @queue_work(i32 %68, i32* %70)
  br label %91

72:                                               ; preds = %52
  br label %77

73:                                               ; preds = %45
  %74 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %75 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %74, i32 0, i32 1
  %76 = call i32 @down_write(i32* %75)
  br label %77

77:                                               ; preds = %73, %72
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %80 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = sub i64 %81, %78
  store i64 %82, i64* %80, align 8
  %83 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %84 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %83, i32 0, i32 1
  %85 = call i32 @up_write(i32* %84)
  %86 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %87 = call i32 @mmput(%struct.mm_struct* %86)
  br label %88

88:                                               ; preds = %77, %44, %36
  %89 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %90 = call i32 @kfree(%struct.ib_umem* %89)
  br label %91

91:                                               ; preds = %88, %57, %14
  ret void
}

declare dso_local i32 @ib_umem_odp_release(%struct.ib_umem*) #1

declare dso_local i32 @__ib_umem_release(i32, %struct.ib_umem*, i32) #1

declare dso_local %struct.task_struct* @get_pid_task(i32, i32) #1

declare dso_local i32 @put_pid(i32) #1

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i64 @ib_umem_num_pages(%struct.ib_umem*) #1

declare dso_local i32 @down_write_trylock(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

declare dso_local i32 @kfree(%struct.ib_umem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
