; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_ipsec.c_mlx5_fpga_ipsec_counters_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_ipsec.c_mlx5_fpga_ipsec_counters_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5_fpga_device* }
%struct.mlx5_fpga_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ipsec_extended_cap = common dso_local global i32 0, align 4
@ipsec_counters_addr_low = common dso_local global i32 0, align 4
@ipsec_counters_addr_high = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_FPGA_ACCESS_TYPE_DONTCARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to read IPSec counters from HW: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fpga_ipsec_counters_read(%struct.mlx5_core_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_fpga_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %14, i32 0, i32 0
  %16 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %15, align 8
  store %struct.mlx5_fpga_device* %16, %struct.mlx5_fpga_device** %8, align 8
  %17 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %8, align 8
  %18 = icmp ne %struct.mlx5_fpga_device* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %8, align 8
  %21 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %3
  store i32 0, i32* %4, align 4
  br label %119

25:                                               ; preds = %19
  %26 = load i32, i32* @ipsec_extended_cap, align 4
  %27 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %8, align 8
  %28 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ipsec_counters_addr_low, align 4
  %33 = call i64 @MLX5_GET(i32 %26, i32 %31, i32 %32)
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @ipsec_extended_cap, align 4
  %36 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %8, align 8
  %37 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ipsec_counters_addr_high, align 4
  %42 = call i64 @MLX5_GET(i32 %35, i32 %40, i32 %41)
  %43 = trunc i64 %42 to i32
  %44 = shl i32 %43, 32
  %45 = add nsw i32 %34, %44
  store i32 %45, i32* %12, align 4
  %46 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %47 = call i32 @mlx5_fpga_ipsec_counters_count(%struct.mlx5_core_dev* %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 4, %49
  %51 = mul i64 %50, 2
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32* @kzalloc(i32 %52, i32 %53)
  store i32* %54, i32** %10, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %25
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %13, align 4
  br label %115

60:                                               ; preds = %25
  %61 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %8, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* %12, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* @MLX5_FPGA_ACCESS_TYPE_DONTCARE, align 4
  %69 = call i32 @mlx5_fpga_mem_read(%struct.mlx5_fpga_device* %61, i32 %65, i32 %66, i32* %67, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %8, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %115

76:                                               ; preds = %60
  store i32 0, i32* %13, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ugt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %80, %76
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %111, %82
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %114

87:                                               ; preds = %83
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %9, align 4
  %90 = mul i32 %89, 2
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @ntohl(i32 %93)
  %95 = trunc i64 %94 to i32
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %9, align 4
  %98 = mul i32 %97, 2
  %99 = add i32 %98, 1
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @ntohl(i32 %102)
  %104 = trunc i64 %103 to i32
  %105 = shl i32 %104, 32
  %106 = or i32 %95, %105
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %9, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %106, i32* %110, align 4
  br label %111

111:                                              ; preds = %87
  %112 = load i32, i32* %9, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %83

114:                                              ; preds = %83
  br label %115

115:                                              ; preds = %114, %72, %57
  %116 = load i32*, i32** %10, align 8
  %117 = call i32 @kfree(i32* %116)
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %115, %24
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i64 @MLX5_GET(i32, i32, i32) #1

declare dso_local i32 @mlx5_fpga_ipsec_counters_count(%struct.mlx5_core_dev*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5_fpga_mem_read(%struct.mlx5_fpga_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @mlx5_fpga_err(%struct.mlx5_fpga_device*, i8*, i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
