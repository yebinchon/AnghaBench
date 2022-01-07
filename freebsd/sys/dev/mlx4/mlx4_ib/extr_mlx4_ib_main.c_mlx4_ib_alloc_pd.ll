; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_ucontext = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_pd = type { %struct.ib_pd, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_pd* (%struct.ib_device*, %struct.ib_ucontext*, %struct.ib_udata*)* @mlx4_ib_alloc_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_pd* @mlx4_ib_alloc_pd(%struct.ib_device* %0, %struct.ib_ucontext* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_ucontext*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.mlx4_ib_pd*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.ib_ucontext* %1, %struct.ib_ucontext** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mlx4_ib_pd* @kmalloc(i32 8, i32 %10)
  store %struct.mlx4_ib_pd* %11, %struct.mlx4_ib_pd** %8, align 8
  %12 = load %struct.mlx4_ib_pd*, %struct.mlx4_ib_pd** %8, align 8
  %13 = icmp ne %struct.mlx4_ib_pd* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.ib_pd* @ERR_PTR(i32 %16)
  store %struct.ib_pd* %17, %struct.ib_pd** %4, align 8
  br label %60

18:                                               ; preds = %3
  %19 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %20 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlx4_ib_pd*, %struct.mlx4_ib_pd** %8, align 8
  %24 = getelementptr inbounds %struct.mlx4_ib_pd, %struct.mlx4_ib_pd* %23, i32 0, i32 1
  %25 = call i32 @mlx4_pd_alloc(i32 %22, i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.mlx4_ib_pd*, %struct.mlx4_ib_pd** %8, align 8
  %30 = call i32 @kfree(%struct.mlx4_ib_pd* %29)
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.ib_pd* @ERR_PTR(i32 %31)
  store %struct.ib_pd* %32, %struct.ib_pd** %4, align 8
  br label %60

33:                                               ; preds = %18
  %34 = load %struct.ib_ucontext*, %struct.ib_ucontext** %6, align 8
  %35 = icmp ne %struct.ib_ucontext* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %33
  %37 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %38 = load %struct.mlx4_ib_pd*, %struct.mlx4_ib_pd** %8, align 8
  %39 = getelementptr inbounds %struct.mlx4_ib_pd, %struct.mlx4_ib_pd* %38, i32 0, i32 1
  %40 = call i64 @ib_copy_to_udata(%struct.ib_udata* %37, i32* %39, i32 4)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %44 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mlx4_ib_pd*, %struct.mlx4_ib_pd** %8, align 8
  %48 = getelementptr inbounds %struct.mlx4_ib_pd, %struct.mlx4_ib_pd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mlx4_pd_free(i32 %46, i32 %49)
  %51 = load %struct.mlx4_ib_pd*, %struct.mlx4_ib_pd** %8, align 8
  %52 = call i32 @kfree(%struct.mlx4_ib_pd* %51)
  %53 = load i32, i32* @EFAULT, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.ib_pd* @ERR_PTR(i32 %54)
  store %struct.ib_pd* %55, %struct.ib_pd** %4, align 8
  br label %60

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %56, %33
  %58 = load %struct.mlx4_ib_pd*, %struct.mlx4_ib_pd** %8, align 8
  %59 = getelementptr inbounds %struct.mlx4_ib_pd, %struct.mlx4_ib_pd* %58, i32 0, i32 0
  store %struct.ib_pd* %59, %struct.ib_pd** %4, align 8
  br label %60

60:                                               ; preds = %57, %42, %28, %14
  %61 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  ret %struct.ib_pd* %61
}

declare dso_local %struct.mlx4_ib_pd* @kmalloc(i32, i32) #1

declare dso_local %struct.ib_pd* @ERR_PTR(i32) #1

declare dso_local i32 @mlx4_pd_alloc(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_pd*) #1

declare dso_local i64 @ib_copy_to_udata(%struct.ib_udata*, i32*, i32) #1

declare dso_local i32 @mlx4_pd_free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
