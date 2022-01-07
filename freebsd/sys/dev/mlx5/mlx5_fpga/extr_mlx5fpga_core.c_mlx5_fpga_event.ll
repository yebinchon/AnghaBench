; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_core.c_mlx5_fpga_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_core.c_mlx5_fpga_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5_fpga_device* }
%struct.mlx5_fpga_device = type { i32, i32, i32, i32 }

@fpga_error_event = common dso_local global i32 0, align 4
@fpga_qp_error_event = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Error %u on QP %u: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Unexpected event %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Error %u: %s\0A\00", align 1
@MLX5_FPGA_ERROR_EVENT_SYNDROME_IMAGE_CHANGED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Error while loading %u: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Unexpected error event %u: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_fpga_event(%struct.mlx5_core_dev* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlx5_fpga_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %13, i32 0, i32 0
  %15 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %14, align 8
  store %struct.mlx5_fpga_device* %15, %struct.mlx5_fpga_device** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %40 [
    i32 131, label %17
    i32 130, label %24
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* @fpga_error_event, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @MLX5_GET(i32 %18, i8* %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i8* @mlx5_fpga_syndrome_to_string(i32 %22)
  store i8* %23, i8** %8, align 8
  br label %44

24:                                               ; preds = %3
  %25 = load i32, i32* @fpga_qp_error_event, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @MLX5_GET(i32 %25, i8* %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i8* @mlx5_fpga_qp_syndrome_to_string(i32 %29)
  store i8* %30, i8** %8, align 8
  %31 = load i32, i32* @fpga_qp_error_event, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @MLX5_GET(i32 %31, i8* %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %7, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i8* %38)
  br label %44

40:                                               ; preds = %3
  %41 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %7, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (%struct.mlx5_fpga_device*, i8*, i32, ...) @mlx5_fpga_warn_ratelimited(%struct.mlx5_fpga_device* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %87

44:                                               ; preds = %24, %17
  %45 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %7, align 8
  %46 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %45, i32 0, i32 2
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %7, align 8
  %50 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %70 [
    i32 128, label %52
    i32 129, label %57
  ]

52:                                               ; preds = %44
  %53 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %7, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @mlx5_fpga_warn(%struct.mlx5_fpga_device* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %54, i8* %55)
  store i32 1, i32* %9, align 4
  br label %75

57:                                               ; preds = %44
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @MLX5_FPGA_ERROR_EVENT_SYNDROME_IMAGE_CHANGED, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %7, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @mlx5_fpga_warn(%struct.mlx5_fpga_device* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %63, i8* %64)
  br label %66

66:                                               ; preds = %61, %57
  %67 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %7, align 8
  %68 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %67, i32 0, i32 3
  %69 = call i32 @complete(i32* %68)
  br label %75

70:                                               ; preds = %44
  %71 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %7, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 (%struct.mlx5_fpga_device*, i8*, i32, ...) @mlx5_fpga_warn_ratelimited(%struct.mlx5_fpga_device* %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %72, i8* %73)
  br label %75

75:                                               ; preds = %70, %66, %52
  %76 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %7, align 8
  %77 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %76, i32 0, i32 2
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %7, align 8
  %84 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @mlx5_trigger_health_work(i32 %85)
  br label %87

87:                                               ; preds = %40, %82, %75
  ret void
}

declare dso_local i32 @MLX5_GET(i32, i8*, i32) #1

declare dso_local i8* @mlx5_fpga_syndrome_to_string(i32) #1

declare dso_local i8* @mlx5_fpga_qp_syndrome_to_string(i32) #1

declare dso_local i32 @mlx5_fpga_err(%struct.mlx5_fpga_device*, i8*, i32, i32, i8*) #1

declare dso_local i32 @mlx5_fpga_warn_ratelimited(%struct.mlx5_fpga_device*, i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mlx5_fpga_warn(%struct.mlx5_fpga_device*, i8*, i32, i8*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mlx5_trigger_health_work(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
