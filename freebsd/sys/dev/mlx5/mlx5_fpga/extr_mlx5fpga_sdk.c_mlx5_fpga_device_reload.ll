; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_sdk.c_mlx5_fpga_device_reload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_sdk.c_mlx5_fpga_device_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_device = type { i32, i32, i32, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MLX5_FPGA_IMAGE_RELOAD = common dso_local global i32 0, align 4
@MLX5_INTERFACE_STATE_UP = common dso_local global i32 0, align 4
@MLX5_FPGA_IMAGE_FACTORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Loading from flash\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to request load: %d\0A\00", align 1
@MLX5_FPGA_IMAGE_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Resetting\0A\00", align 1
@MLX5_FPGA_CTRL_OPERATION_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to request reset: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Unknown command: %d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@MLX5_FPGA_LOAD_TIMEOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed waiting for FPGA load: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"fpga device start failed %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"IPSec device start failed %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"mlx5_register_device failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fpga_device_reload(%struct.mlx5_fpga_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_fpga_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %10, i32 0, i32 3
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  store %struct.mlx5_core_dev* %12, %struct.mlx5_core_dev** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %13, i32 0, i32 2
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %27 [
    i32 129, label %20
    i32 130, label %23
    i32 128, label %26
    i32 131, label %26
    i32 132, label %26
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %9, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %27

26:                                               ; preds = %2, %2, %2
  br label %27

27:                                               ; preds = %2, %26, %23, %20
  %28 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %28, i32 0, i32 2
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %158

36:                                               ; preds = %27
  %37 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %38 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @MLX5_FPGA_IMAGE_RELOAD, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %45 = call i32 @mlx5_fpga_device_reload_cmd(%struct.mlx5_fpga_device* %44)
  store i32 %45, i32* %9, align 4
  br label %153

46:                                               ; preds = %36
  %47 = load i32, i32* @MLX5_INTERFACE_STATE_UP, align 4
  %48 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %49 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %48, i32 0, i32 1
  %50 = call i32 @clear_bit(i32 %47, i32* %49)
  %51 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %52 = call i32 @mlx5_unregister_device(%struct.mlx5_core_dev* %51)
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %54 = call i32 @mlx5_fpga_device_stop(%struct.mlx5_core_dev* %53)
  %55 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %56 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %55, i32 0, i32 0
  store i32 130, i32* %56, align 8
  %57 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %58 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %57, i32 0, i32 1
  %59 = call i32 @reinit_completion(i32* %58)
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @MLX5_FPGA_IMAGE_FACTORY, align 4
  %62 = icmp ule i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %46
  %64 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %65 = call i32 @mlx5_fpga_info(%struct.mlx5_fpga_device* %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @mlx5_fpga_load(%struct.mlx5_core_dev* %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %153

75:                                               ; preds = %63
  br label %98

76:                                               ; preds = %46
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @MLX5_FPGA_IMAGE_RESET, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %82 = call i32 @mlx5_fpga_info(%struct.mlx5_fpga_device* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %84 = load i32, i32* @MLX5_FPGA_CTRL_OPERATION_RESET, align 4
  %85 = call i32 @mlx5_fpga_ctrl_op(%struct.mlx5_core_dev* %83, i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  br label %153

92:                                               ; preds = %80
  br label %97

93:                                               ; preds = %76
  %94 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  br label %153

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %75
  %99 = load i64, i64* @jiffies, align 8
  %100 = load i32, i32* @MLX5_FPGA_LOAD_TIMEOUT, align 4
  %101 = call i64 @msecs_to_jiffies(i32 %100)
  %102 = add i64 %99, %101
  store i64 %102, i64* %7, align 8
  %103 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %104 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %103, i32 0, i32 1
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* @jiffies, align 8
  %107 = sub i64 %105, %106
  %108 = call i32 @wait_for_completion_timeout(i32* %104, i64 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %98
  %112 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  %115 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %116 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %115, i32 0, i32 0
  store i32 131, i32* %116, align 8
  br label %153

117:                                              ; preds = %98
  %118 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %119 = call i32 @mlx5_fpga_device_start(%struct.mlx5_core_dev* %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %124)
  br label %153

126:                                              ; preds = %117
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %130, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %131)
  br label %150

133:                                              ; preds = %126
  %134 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %135 = call i32 @mlx5_register_device(%struct.mlx5_core_dev* %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %139, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %140)
  %142 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %143 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %142, i32 0, i32 0
  store i32 131, i32* %143, align 8
  br label %149

144:                                              ; preds = %133
  %145 = load i32, i32* @MLX5_INTERFACE_STATE_UP, align 4
  %146 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %147 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %146, i32 0, i32 1
  %148 = call i32 @set_bit(i32 %145, i32* %147)
  br label %153

149:                                              ; preds = %138
  br label %150

150:                                              ; preds = %149, %129
  %151 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %152 = call i32 @mlx5_fpga_device_stop(%struct.mlx5_core_dev* %151)
  br label %153

153:                                              ; preds = %150, %144, %122, %111, %93, %88, %71, %43
  %154 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %155 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %154, i32 0, i32 0
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load i32, i32* %9, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %153, %34
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx5_fpga_device_reload_cmd(%struct.mlx5_fpga_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mlx5_unregister_device(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_fpga_device_stop(%struct.mlx5_core_dev*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @mlx5_fpga_info(%struct.mlx5_fpga_device*, i8*) #1

declare dso_local i32 @mlx5_fpga_load(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_fpga_err(%struct.mlx5_fpga_device*, i8*, i32) #1

declare dso_local i32 @mlx5_fpga_ctrl_op(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @mlx5_fpga_device_start(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_register_device(%struct.mlx5_core_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
