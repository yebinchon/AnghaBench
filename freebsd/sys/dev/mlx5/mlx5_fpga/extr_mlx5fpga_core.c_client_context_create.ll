; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_core.c_client_context_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_core.c_client_context_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_device = type { i32 }
%struct.mlx5_fpga_client = type { i32 (%struct.mlx5_fpga_device*)* }
%struct.mlx5_fpga_client_data = type { i32, i32, i32*, %struct.mlx5_fpga_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Adding client context %p client %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fpga_device*, %struct.mlx5_fpga_client*, %struct.mlx5_fpga_client_data**)* @client_context_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_context_create(%struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_client* %1, %struct.mlx5_fpga_client_data** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_fpga_device*, align 8
  %6 = alloca %struct.mlx5_fpga_client*, align 8
  %7 = alloca %struct.mlx5_fpga_client_data**, align 8
  %8 = alloca %struct.mlx5_fpga_client_data*, align 8
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %5, align 8
  store %struct.mlx5_fpga_client* %1, %struct.mlx5_fpga_client** %6, align 8
  store %struct.mlx5_fpga_client_data** %2, %struct.mlx5_fpga_client_data*** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mlx5_fpga_client_data* @kmalloc(i32 24, i32 %9)
  store %struct.mlx5_fpga_client_data* %10, %struct.mlx5_fpga_client_data** %8, align 8
  %11 = load %struct.mlx5_fpga_client_data*, %struct.mlx5_fpga_client_data** %8, align 8
  %12 = icmp ne %struct.mlx5_fpga_client_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %50

16:                                               ; preds = %3
  %17 = load %struct.mlx5_fpga_client*, %struct.mlx5_fpga_client** %6, align 8
  %18 = load %struct.mlx5_fpga_client_data*, %struct.mlx5_fpga_client_data** %8, align 8
  %19 = getelementptr inbounds %struct.mlx5_fpga_client_data, %struct.mlx5_fpga_client_data* %18, i32 0, i32 3
  store %struct.mlx5_fpga_client* %17, %struct.mlx5_fpga_client** %19, align 8
  %20 = load %struct.mlx5_fpga_client_data*, %struct.mlx5_fpga_client_data** %8, align 8
  %21 = getelementptr inbounds %struct.mlx5_fpga_client_data, %struct.mlx5_fpga_client_data* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.mlx5_fpga_client_data*, %struct.mlx5_fpga_client_data** %8, align 8
  %23 = getelementptr inbounds %struct.mlx5_fpga_client_data, %struct.mlx5_fpga_client_data* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.mlx5_fpga_client_data*, %struct.mlx5_fpga_client_data** %8, align 8
  %25 = getelementptr inbounds %struct.mlx5_fpga_client_data, %struct.mlx5_fpga_client_data* %24, i32 0, i32 1
  %26 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %27 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %26, i32 0, i32 0
  %28 = call i32 @list_add(i32* %25, i32* %27)
  %29 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %30 = load %struct.mlx5_fpga_client_data*, %struct.mlx5_fpga_client_data** %8, align 8
  %31 = load %struct.mlx5_fpga_client*, %struct.mlx5_fpga_client** %6, align 8
  %32 = call i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.mlx5_fpga_client_data* %30, %struct.mlx5_fpga_client* %31)
  %33 = load %struct.mlx5_fpga_client*, %struct.mlx5_fpga_client** %6, align 8
  %34 = getelementptr inbounds %struct.mlx5_fpga_client, %struct.mlx5_fpga_client* %33, i32 0, i32 0
  %35 = load i32 (%struct.mlx5_fpga_device*)*, i32 (%struct.mlx5_fpga_device*)** %34, align 8
  %36 = icmp ne i32 (%struct.mlx5_fpga_device*)* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %16
  %38 = load %struct.mlx5_fpga_client*, %struct.mlx5_fpga_client** %6, align 8
  %39 = getelementptr inbounds %struct.mlx5_fpga_client, %struct.mlx5_fpga_client* %38, i32 0, i32 0
  %40 = load i32 (%struct.mlx5_fpga_device*)*, i32 (%struct.mlx5_fpga_device*)** %39, align 8
  %41 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %42 = call i32 %40(%struct.mlx5_fpga_device* %41)
  br label %43

43:                                               ; preds = %37, %16
  %44 = load %struct.mlx5_fpga_client_data**, %struct.mlx5_fpga_client_data*** %7, align 8
  %45 = icmp ne %struct.mlx5_fpga_client_data** %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.mlx5_fpga_client_data*, %struct.mlx5_fpga_client_data** %8, align 8
  %48 = load %struct.mlx5_fpga_client_data**, %struct.mlx5_fpga_client_data*** %7, align 8
  store %struct.mlx5_fpga_client_data* %47, %struct.mlx5_fpga_client_data** %48, align 8
  br label %49

49:                                               ; preds = %46, %43
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %13
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.mlx5_fpga_client_data* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device*, i8*, %struct.mlx5_fpga_client_data*, %struct.mlx5_fpga_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
