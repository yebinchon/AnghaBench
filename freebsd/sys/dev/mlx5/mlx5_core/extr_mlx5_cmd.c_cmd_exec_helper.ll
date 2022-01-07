; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_cmd_exec_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_cmd_exec_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i64, i32 }
%struct.mlx5_cmd_msg = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MLX5_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i64 0, align 8
@mbox_in = common dso_local global i32 0, align 4
@mbox_out = common dso_local global i32 0, align 4
@syndrome = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"err %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"err %d, status %d\0A\00", align 1
@opcode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i8*, i32, i8*, i32, i32, i8*, i32)* @cmd_exec_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_exec_helper(%struct.mlx5_core_dev* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_core_dev*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.mlx5_cmd_msg*, align 8
  %19 = alloca %struct.mlx5_cmd_msg*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  store i32 %26, i32* %21, align 4
  store i64 0, i64* %23, align 8
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %28 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @pci_channel_offline(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %8
  %33 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %34 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %32, %8
  %39 = load i32, i32* @mbox_in, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* %25, align 4
  %42 = call i32 @MLX5_GET(i32 %39, i8* %40, i32 %41)
  store i32 %42, i32* %25, align 4
  %43 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %44 = load i32, i32* %25, align 4
  %45 = call i32 @mlx5_internal_err_ret_value(%struct.mlx5_core_dev* %43, i32 %44, i64* %24, i64* %23)
  store i32 %45, i32* %22, align 4
  %46 = load i32, i32* @mbox_out, align 4
  %47 = load i8*, i8** %13, align 8
  %48 = load i64, i64* %23, align 8
  %49 = load i64, i64* %23, align 8
  %50 = call i32 @MLX5_SET(i32 %46, i8* %47, i64 %48, i64 %49)
  %51 = load i32, i32* @mbox_out, align 4
  %52 = load i8*, i8** %13, align 8
  %53 = load i64, i64* @syndrome, align 8
  %54 = load i64, i64* %24, align 8
  %55 = call i32 @MLX5_SET(i32 %51, i8* %52, i64 %53, i64 %54)
  %56 = load i32, i32* %22, align 4
  store i32 %56, i32* %9, align 4
  br label %144

57:                                               ; preds = %32
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @is_manage_pages(i8* %58)
  store i32 %59, i32* %20, align 4
  %60 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %21, align 4
  %63 = call %struct.mlx5_cmd_msg* @alloc_msg(%struct.mlx5_core_dev* %60, i32 %61, i32 %62)
  store %struct.mlx5_cmd_msg* %63, %struct.mlx5_cmd_msg** %18, align 8
  %64 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %18, align 8
  %65 = call i64 @IS_ERR(%struct.mlx5_cmd_msg* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %18, align 8
  %69 = call i32 @PTR_ERR(%struct.mlx5_cmd_msg* %68)
  store i32 %69, i32* %22, align 4
  %70 = load i32, i32* %22, align 4
  store i32 %70, i32* %9, align 4
  br label %144

71:                                               ; preds = %57
  %72 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %18, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @mlx5_copy_to_msg(%struct.mlx5_cmd_msg* %72, i8* %73, i32 %74)
  store i32 %75, i32* %22, align 4
  %76 = load i32, i32* %22, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %80 = load i32, i32* %22, align 4
  %81 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %139

82:                                               ; preds = %71
  %83 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %84 = load i32, i32* %21, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call %struct.mlx5_cmd_msg* @mlx5_alloc_cmd_msg(%struct.mlx5_core_dev* %83, i32 %84, i32 %85)
  store %struct.mlx5_cmd_msg* %86, %struct.mlx5_cmd_msg** %19, align 8
  %87 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %19, align 8
  %88 = call i64 @IS_ERR(%struct.mlx5_cmd_msg* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %19, align 8
  %92 = call i32 @PTR_ERR(%struct.mlx5_cmd_msg* %91)
  store i32 %92, i32* %22, align 4
  br label %139

93:                                               ; preds = %82
  %94 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %95 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %18, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %19, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i8*, i8** %16, align 8
  %102 = load i32, i32* %20, align 4
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @mlx5_cmd_invoke(%struct.mlx5_core_dev* %94, %struct.mlx5_cmd_msg* %95, i32 %96, %struct.mlx5_cmd_msg* %97, i8* %98, i32 %99, i32 %100, i8* %101, i32 %102, i64* %23, i32 %103)
  store i32 %104, i32* %22, align 4
  %105 = load i32, i32* %22, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %93
  %108 = load i32, i32* %22, align 4
  %109 = load i32, i32* @ETIMEDOUT, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* %22, align 4
  store i32 %113, i32* %9, align 4
  br label %144

114:                                              ; preds = %107
  br label %135

115:                                              ; preds = %93
  %116 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %117 = load i32, i32* %22, align 4
  %118 = load i64, i64* %23, align 8
  %119 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %116, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %117, i64 %118)
  %120 = load i64, i64* %23, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load i64, i64* %23, align 8
  %124 = call i32 @status_to_err(i64 %123)
  store i32 %124, i32* %22, align 4
  br label %135

125:                                              ; preds = %115
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32, i32* %22, align 4
  store i32 %129, i32* %9, align 4
  br label %144

130:                                              ; preds = %125
  %131 = load i8*, i8** %13, align 8
  %132 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %19, align 8
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @mlx5_copy_from_msg(i8* %131, %struct.mlx5_cmd_msg* %132, i32 %133)
  store i32 %134, i32* %22, align 4
  br label %135

135:                                              ; preds = %130, %122, %114
  %136 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %137 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %19, align 8
  %138 = call i32 @mlx5_free_cmd_msg(%struct.mlx5_core_dev* %136, %struct.mlx5_cmd_msg* %137)
  br label %139

139:                                              ; preds = %135, %90, %78
  %140 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %141 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %18, align 8
  %142 = call i32 @free_msg(%struct.mlx5_core_dev* %140, %struct.mlx5_cmd_msg* %141)
  %143 = load i32, i32* %22, align 4
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %139, %128, %112, %67, %38
  %145 = load i32, i32* %9, align 4
  ret i32 %145
}

declare dso_local i64 @pci_channel_offline(i32) #1

declare dso_local i32 @MLX5_GET(i32, i8*, i32) #1

declare dso_local i32 @mlx5_internal_err_ret_value(%struct.mlx5_core_dev*, i32, i64*, i64*) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i64, i64) #1

declare dso_local i32 @is_manage_pages(i8*) #1

declare dso_local %struct.mlx5_cmd_msg* @alloc_msg(%struct.mlx5_core_dev*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_cmd_msg*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_cmd_msg*) #1

declare dso_local i32 @mlx5_copy_to_msg(%struct.mlx5_cmd_msg*, i8*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local %struct.mlx5_cmd_msg* @mlx5_alloc_cmd_msg(%struct.mlx5_core_dev*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_invoke(%struct.mlx5_core_dev*, %struct.mlx5_cmd_msg*, i32, %struct.mlx5_cmd_msg*, i8*, i32, i32, i8*, i32, i64*, i32) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i32, i64) #1

declare dso_local i32 @status_to_err(i64) #1

declare dso_local i32 @mlx5_copy_from_msg(i8*, %struct.mlx5_cmd_msg*, i32) #1

declare dso_local i32 @mlx5_free_cmd_msg(%struct.mlx5_core_dev*, %struct.mlx5_cmd_msg*) #1

declare dso_local i32 @free_msg(%struct.mlx5_core_dev*, %struct.mlx5_cmd_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
