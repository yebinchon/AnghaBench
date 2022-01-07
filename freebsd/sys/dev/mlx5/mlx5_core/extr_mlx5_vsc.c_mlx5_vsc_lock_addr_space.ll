; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vsc.c_mlx5_vsc_lock_addr_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vsc.c_mlx5_vsc_lock_addr_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MLX5_VSC_DOMAIN_SEMAPHORES = common dso_local global i32 0, align 4
@MLX5_VSC_COUNTER_OFFSET = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_vsc_lock_addr_space(%struct.mlx5_core_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %21 = load i32, i32* @MLX5_VSC_DOMAIN_SEMAPHORES, align 4
  %22 = call i32 @mlx5_vsc_set_space(%struct.mlx5_core_dev* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %56

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @MLX5_VSC_COUNTER_OFFSET, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i64 @pci_read_config(i32 %28, i64 %32, i32 4)
  store i64 %33, i64* %10, align 8
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @mlx5_vsc_write(%struct.mlx5_core_dev* %34, i64 %35, i64* %10)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %56

41:                                               ; preds = %27
  %42 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @mlx5_vsc_read(%struct.mlx5_core_dev* %42, i64 %43, i64* %8)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %56

49:                                               ; preds = %41
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @EBUSY, align 4
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %53, %47, %39, %25
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @mlx5_vsc_set_space(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @mlx5_vsc_write(%struct.mlx5_core_dev*, i64, i64*) #1

declare dso_local i32 @mlx5_vsc_read(%struct.mlx5_core_dev*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
