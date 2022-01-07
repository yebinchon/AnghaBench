; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_mlx5_ib_alloc_xrcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_mlx5_ib_alloc_xrcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_xrcd = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_ucontext = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_xrcd = type { %struct.ib_xrcd, i32 }

@xrc = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_xrcd* @mlx5_ib_alloc_xrcd(%struct.ib_device* %0, %struct.ib_ucontext* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_xrcd*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_ucontext*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.mlx5_ib_dev*, align 8
  %9 = alloca %struct.mlx5_ib_xrcd*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.ib_ucontext* %1, %struct.ib_ucontext** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %12 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %11)
  store %struct.mlx5_ib_dev* %12, %struct.mlx5_ib_dev** %8, align 8
  %13 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @xrc, align 4
  %17 = call i32 @MLX5_CAP_GEN(i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOSYS, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.ib_xrcd* @ERR_PTR(i32 %21)
  store %struct.ib_xrcd* %22, %struct.ib_xrcd** %4, align 8
  br label %50

23:                                               ; preds = %3
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.mlx5_ib_xrcd* @kmalloc(i32 8, i32 %24)
  store %struct.mlx5_ib_xrcd* %25, %struct.mlx5_ib_xrcd** %9, align 8
  %26 = load %struct.mlx5_ib_xrcd*, %struct.mlx5_ib_xrcd** %9, align 8
  %27 = icmp ne %struct.mlx5_ib_xrcd* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.ib_xrcd* @ERR_PTR(i32 %30)
  store %struct.ib_xrcd* %31, %struct.ib_xrcd** %4, align 8
  br label %50

32:                                               ; preds = %23
  %33 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %34 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlx5_ib_xrcd*, %struct.mlx5_ib_xrcd** %9, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_xrcd, %struct.mlx5_ib_xrcd* %36, i32 0, i32 1
  %38 = call i32 @mlx5_core_xrcd_alloc(i32 %35, i32* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load %struct.mlx5_ib_xrcd*, %struct.mlx5_ib_xrcd** %9, align 8
  %43 = call i32 @kfree(%struct.mlx5_ib_xrcd* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.ib_xrcd* @ERR_PTR(i32 %45)
  store %struct.ib_xrcd* %46, %struct.ib_xrcd** %4, align 8
  br label %50

47:                                               ; preds = %32
  %48 = load %struct.mlx5_ib_xrcd*, %struct.mlx5_ib_xrcd** %9, align 8
  %49 = getelementptr inbounds %struct.mlx5_ib_xrcd, %struct.mlx5_ib_xrcd* %48, i32 0, i32 0
  store %struct.ib_xrcd* %49, %struct.ib_xrcd** %4, align 8
  br label %50

50:                                               ; preds = %47, %41, %28, %19
  %51 = load %struct.ib_xrcd*, %struct.ib_xrcd** %4, align 8
  ret %struct.ib_xrcd* %51
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local %struct.ib_xrcd* @ERR_PTR(i32) #1

declare dso_local %struct.mlx5_ib_xrcd* @kmalloc(i32, i32) #1

declare dso_local i32 @mlx5_core_xrcd_alloc(i32, i32*) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_xrcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
