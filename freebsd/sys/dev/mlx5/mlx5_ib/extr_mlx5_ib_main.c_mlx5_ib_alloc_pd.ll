; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_ib_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_ib_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_ucontext = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx5_ib_alloc_pd_resp = type { i32 }
%struct.mlx5_ib_pd = type { %struct.ib_pd, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_pd* (%struct.ib_device*, %struct.ib_ucontext*, %struct.ib_udata*)* @mlx5_ib_alloc_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_pd* @mlx5_ib_alloc_pd(%struct.ib_device* %0, %struct.ib_ucontext* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_ucontext*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.mlx5_ib_alloc_pd_resp, align 4
  %9 = alloca %struct.mlx5_ib_pd*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.ib_ucontext* %1, %struct.ib_ucontext** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mlx5_ib_pd* @kmalloc(i32 8, i32 %11)
  store %struct.mlx5_ib_pd* %12, %struct.mlx5_ib_pd** %9, align 8
  %13 = load %struct.mlx5_ib_pd*, %struct.mlx5_ib_pd** %9, align 8
  %14 = icmp ne %struct.mlx5_ib_pd* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.ib_pd* @ERR_PTR(i32 %17)
  store %struct.ib_pd* %18, %struct.ib_pd** %4, align 8
  br label %63

19:                                               ; preds = %3
  %20 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %21 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlx5_ib_pd*, %struct.mlx5_ib_pd** %9, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_pd, %struct.mlx5_ib_pd* %24, i32 0, i32 1
  %26 = call i32 @mlx5_core_alloc_pd(i32 %23, i32* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.mlx5_ib_pd*, %struct.mlx5_ib_pd** %9, align 8
  %31 = call i32 @kfree(%struct.mlx5_ib_pd* %30)
  %32 = load i32, i32* %10, align 4
  %33 = call %struct.ib_pd* @ERR_PTR(i32 %32)
  store %struct.ib_pd* %33, %struct.ib_pd** %4, align 8
  br label %63

34:                                               ; preds = %19
  %35 = load %struct.ib_ucontext*, %struct.ib_ucontext** %6, align 8
  %36 = icmp ne %struct.ib_ucontext* %35, null
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  %38 = load %struct.mlx5_ib_pd*, %struct.mlx5_ib_pd** %9, align 8
  %39 = getelementptr inbounds %struct.mlx5_ib_pd, %struct.mlx5_ib_pd* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.mlx5_ib_alloc_pd_resp, %struct.mlx5_ib_alloc_pd_resp* %8, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %43 = call i64 @ib_copy_to_udata(%struct.ib_udata* %42, %struct.mlx5_ib_alloc_pd_resp* %8, i32 4)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %37
  %46 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %47 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mlx5_ib_pd*, %struct.mlx5_ib_pd** %9, align 8
  %51 = getelementptr inbounds %struct.mlx5_ib_pd, %struct.mlx5_ib_pd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @mlx5_core_dealloc_pd(i32 %49, i32 %52)
  %54 = load %struct.mlx5_ib_pd*, %struct.mlx5_ib_pd** %9, align 8
  %55 = call i32 @kfree(%struct.mlx5_ib_pd* %54)
  %56 = load i32, i32* @EFAULT, align 4
  %57 = sub nsw i32 0, %56
  %58 = call %struct.ib_pd* @ERR_PTR(i32 %57)
  store %struct.ib_pd* %58, %struct.ib_pd** %4, align 8
  br label %63

59:                                               ; preds = %37
  br label %60

60:                                               ; preds = %59, %34
  %61 = load %struct.mlx5_ib_pd*, %struct.mlx5_ib_pd** %9, align 8
  %62 = getelementptr inbounds %struct.mlx5_ib_pd, %struct.mlx5_ib_pd* %61, i32 0, i32 0
  store %struct.ib_pd* %62, %struct.ib_pd** %4, align 8
  br label %63

63:                                               ; preds = %60, %45, %29, %15
  %64 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  ret %struct.ib_pd* %64
}

declare dso_local %struct.mlx5_ib_pd* @kmalloc(i32, i32) #1

declare dso_local %struct.ib_pd* @ERR_PTR(i32) #1

declare dso_local i32 @mlx5_core_alloc_pd(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_pd*) #1

declare dso_local i64 @ib_copy_to_udata(%struct.ib_udata*, %struct.mlx5_ib_alloc_pd_resp*, i32) #1

declare dso_local i32 @mlx5_core_dealloc_pd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
