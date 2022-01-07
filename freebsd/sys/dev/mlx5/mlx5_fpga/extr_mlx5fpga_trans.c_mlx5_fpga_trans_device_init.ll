; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_trans.c_mlx5_fpga_trans_device_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_trans.c_mlx5_fpga_trans_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fpga_trans_device_init(%struct.mlx5_fpga_device* %0) #0 {
  %2 = alloca %struct.mlx5_fpga_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.TYPE_3__* @kzalloc(i32 16, i32 %5)
  %7 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %7, i32 0, i32 0
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %8, align 8
  %9 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %10 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %65

16:                                               ; preds = %1
  %17 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %18 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %56, %16
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %25 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %28)
  %30 = icmp slt i32 %23, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %34 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %32, i32* %41, align 4
  %42 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %43 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %52 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = call i32 @list_add_tail(i32* %50, i32* %54)
  br label %56

56:                                               ; preds = %31
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %22

59:                                               ; preds = %22
  %60 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %61 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = call i32 @spin_lock_init(i32* %63)
  br label %65

65:                                               ; preds = %59, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_3__* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
