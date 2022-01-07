; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_umem_odp.c_ib_umem_odp_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_umem_odp.c_ib_umem_odp_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_umem = type { %struct.ib_umem*, i32, i32, i32, i32, i32, i32, %struct.ib_ucontext* }
%struct.ib_ucontext = type { i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32 }
%struct.mm_struct = type { i32 }

@PIDTYPE_PID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_umem_odp_release(%struct.ib_umem* %0) #0 {
  %2 = alloca %struct.ib_umem*, align 8
  %3 = alloca %struct.ib_ucontext*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  store %struct.ib_umem* %0, %struct.ib_umem** %2, align 8
  %6 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %7 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %6, i32 0, i32 7
  %8 = load %struct.ib_ucontext*, %struct.ib_ucontext** %7, align 8
  store %struct.ib_ucontext* %8, %struct.ib_ucontext** %3, align 8
  %9 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %10 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %11 = call i64 @ib_umem_start(%struct.ib_umem* %10)
  %12 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %13 = call i64 @ib_umem_end(%struct.ib_umem* %12)
  %14 = call i32 @ib_umem_odp_unmap_dma_pages(%struct.ib_umem* %9, i64 %11, i64 %13)
  %15 = load %struct.ib_ucontext*, %struct.ib_ucontext** %3, align 8
  %16 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %15, i32 0, i32 0
  %17 = call i32 @down_write(i32* %16)
  %18 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %19 = call i64 @ib_umem_start(%struct.ib_umem* %18)
  %20 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %21 = call i64 @ib_umem_end(%struct.ib_umem* %20)
  %22 = icmp ne i64 %19, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %1
  %27 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %28 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %27, i32 0, i32 0
  %29 = load %struct.ib_umem*, %struct.ib_umem** %28, align 8
  %30 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %29, i32 0, i32 6
  %31 = load %struct.ib_ucontext*, %struct.ib_ucontext** %3, align 8
  %32 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %31, i32 0, i32 4
  %33 = call i32 @rbt_ib_umem_remove(i32* %30, i32* %32)
  br label %34

34:                                               ; preds = %26, %1
  %35 = load %struct.ib_ucontext*, %struct.ib_ucontext** %3, align 8
  %36 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %40 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %39, i32 0, i32 0
  %41 = load %struct.ib_umem*, %struct.ib_umem** %40, align 8
  %42 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %34
  %46 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %47 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %46, i32 0, i32 0
  %48 = load %struct.ib_umem*, %struct.ib_umem** %47, align 8
  %49 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %48, i32 0, i32 4
  %50 = call i32 @list_del(i32* %49)
  %51 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %52 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %51, i32 0, i32 0
  %53 = load %struct.ib_umem*, %struct.ib_umem** %52, align 8
  %54 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %53, i32 0, i32 3
  %55 = call i32 @complete_all(i32* %54)
  br label %56

56:                                               ; preds = %45, %34
  %57 = load %struct.ib_ucontext*, %struct.ib_ucontext** %3, align 8
  %58 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %57, i32 0, i32 0
  %59 = call i32 @downgrade_write(i32* %58)
  %60 = load %struct.ib_ucontext*, %struct.ib_ucontext** %3, align 8
  %61 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %89, label %64

64:                                               ; preds = %56
  store %struct.task_struct* null, %struct.task_struct** %4, align 8
  store %struct.mm_struct* null, %struct.mm_struct** %5, align 8
  %65 = load %struct.ib_ucontext*, %struct.ib_ucontext** %3, align 8
  %66 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PIDTYPE_PID, align 4
  %69 = call %struct.task_struct* @get_pid_task(i32 %67, i32 %68)
  store %struct.task_struct* %69, %struct.task_struct** %4, align 8
  %70 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %71 = icmp eq %struct.task_struct* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %90

73:                                               ; preds = %64
  %74 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %75 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %74)
  store %struct.mm_struct* %75, %struct.mm_struct** %5, align 8
  %76 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %77 = icmp eq %struct.mm_struct* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %86

79:                                               ; preds = %73
  %80 = load %struct.ib_ucontext*, %struct.ib_ucontext** %3, align 8
  %81 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %80, i32 0, i32 1
  %82 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %83 = call i32 @mmu_notifier_unregister(i32* %81, %struct.mm_struct* %82)
  %84 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %85 = call i32 @mmput(%struct.mm_struct* %84)
  br label %86

86:                                               ; preds = %79, %78
  %87 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %88 = call i32 @put_task_struct(%struct.task_struct* %87)
  br label %89

89:                                               ; preds = %86, %56
  br label %90

90:                                               ; preds = %89, %72
  %91 = load %struct.ib_ucontext*, %struct.ib_ucontext** %3, align 8
  %92 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %91, i32 0, i32 0
  %93 = call i32 @up_read(i32* %92)
  %94 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %95 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %94, i32 0, i32 0
  %96 = load %struct.ib_umem*, %struct.ib_umem** %95, align 8
  %97 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @vfree(i32 %98)
  %100 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %101 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %100, i32 0, i32 0
  %102 = load %struct.ib_umem*, %struct.ib_umem** %101, align 8
  %103 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @vfree(i32 %104)
  %106 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %107 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %106, i32 0, i32 0
  %108 = load %struct.ib_umem*, %struct.ib_umem** %107, align 8
  %109 = call i32 @kfree(%struct.ib_umem* %108)
  %110 = load %struct.ib_umem*, %struct.ib_umem** %2, align 8
  %111 = call i32 @kfree(%struct.ib_umem* %110)
  ret void
}

declare dso_local i32 @ib_umem_odp_unmap_dma_pages(%struct.ib_umem*, i64, i64) #1

declare dso_local i64 @ib_umem_start(%struct.ib_umem*) #1

declare dso_local i64 @ib_umem_end(%struct.ib_umem*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rbt_ib_umem_remove(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @downgrade_write(i32*) #1

declare dso_local %struct.task_struct* @get_pid_task(i32, i32) #1

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i32 @mmu_notifier_unregister(i32*, %struct.mm_struct*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @kfree(%struct.ib_umem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
