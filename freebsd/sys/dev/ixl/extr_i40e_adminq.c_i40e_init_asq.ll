; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_adminq.c_i40e_init_asq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_adminq.c_i40e_init_asq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_ERR_NOT_READY = common dso_local global i32 0, align 4
@I40E_ERR_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_init_asq(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  %4 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %6 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @I40E_ERR_NOT_READY, align 4
  store i32 %12, i32* %3, align 4
  br label %68

13:                                               ; preds = %1
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %15 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %21 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19, %13
  %26 = load i32, i32* @I40E_ERR_CONFIG, align 4
  store i32 %26, i32* %3, align 4
  br label %68

27:                                               ; preds = %19
  %28 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %29 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %33 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %37 = call i32 @i40e_alloc_adminq_asq_ring(%struct.i40e_hw* %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @I40E_SUCCESS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %68

42:                                               ; preds = %27
  %43 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %44 = call i32 @i40e_alloc_asq_bufs(%struct.i40e_hw* %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @I40E_SUCCESS, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %65

49:                                               ; preds = %42
  %50 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %51 = call i32 @i40e_config_asq_regs(%struct.i40e_hw* %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @I40E_SUCCESS, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %65

56:                                               ; preds = %49
  %57 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %58 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %62 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i64 %60, i64* %64, align 8
  br label %68

65:                                               ; preds = %55, %48
  %66 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %67 = call i32 @i40e_free_adminq_asq(%struct.i40e_hw* %66)
  br label %68

68:                                               ; preds = %65, %56, %41, %25, %11
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @i40e_alloc_adminq_asq_ring(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_alloc_asq_bufs(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_config_asq_regs(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_free_adminq_asq(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
