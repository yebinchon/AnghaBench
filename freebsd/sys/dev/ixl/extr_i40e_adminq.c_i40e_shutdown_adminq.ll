; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_adminq.c_i40e_shutdown_adminq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_adminq.c_i40e_shutdown_adminq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_shutdown_adminq(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  %4 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %6 = call i64 @i40e_check_asq_alive(%struct.i40e_hw* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i32 @i40e_aq_queue_shutdown(%struct.i40e_hw* %9, i32 %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %14 = call i32 @i40e_shutdown_asq(%struct.i40e_hw* %13)
  %15 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %16 = call i32 @i40e_shutdown_arq(%struct.i40e_hw* %15)
  %17 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %18 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = call i32 @i40e_destroy_spinlock(i32* %19)
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %22 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @i40e_destroy_spinlock(i32* %23)
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %26 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %12
  %31 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %33 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %32, i32 0, i32 0
  %34 = call i32 @i40e_free_virt_mem(%struct.i40e_hw* %31, %struct.TYPE_4__* %33)
  br label %35

35:                                               ; preds = %30, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @i40e_check_asq_alive(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_aq_queue_shutdown(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_shutdown_asq(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_shutdown_arq(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_destroy_spinlock(i32*) #1

declare dso_local i32 @i40e_free_virt_mem(%struct.i40e_hw*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
