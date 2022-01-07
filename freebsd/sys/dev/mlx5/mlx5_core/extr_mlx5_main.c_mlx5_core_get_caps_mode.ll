; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_mlx5_core_get_caps_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_mlx5_core_get_caps_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32*, i32* }

@query_hca_cap_in = common dso_local global i32 0, align 4
@query_hca_cap_out = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_QUERY_HCA_CAP = common dso_local global i32 0, align 4
@op_mod = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"QUERY_HCA_CAP : type(%x) opmode(%x) Failed(%d)\0A\00", align 1
@capability = common dso_local global i32 0, align 4
@hca_cap_union = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Tried to query dev cap type(%x) with wrong opmode(%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32, i32)* @mlx5_core_get_caps_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_core_get_caps_mode(%struct.mlx5_core_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @query_hca_cap_in, align 4
  %15 = call i32 @MLX5_ST_SZ_BYTES(i32 %14)
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32, i32* @query_hca_cap_out, align 4
  %20 = call i32 @MLX5_ST_SZ_BYTES(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 %21, 1
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 1
  %25 = or i32 %22, %24
  store i32 %25, i32* %12, align 4
  %26 = mul nuw i64 4, %16
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memset(i32* %18, i32 0, i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kzalloc(i32 %29, i32 %30)
  store i8* %31, i8** %10, align 8
  %32 = load i32, i32* @query_hca_cap_in, align 4
  %33 = load i32, i32* @opcode, align 4
  %34 = load i32, i32* @MLX5_CMD_OP_QUERY_HCA_CAP, align 4
  %35 = call i32 @MLX5_SET(i32 %32, i32* %18, i32 %33, i32 %34)
  %36 = load i32, i32* @query_hca_cap_in, align 4
  %37 = load i32, i32* @op_mod, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @MLX5_SET(i32 %36, i32* %18, i32 %37, i32 %38)
  %40 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %41 = mul nuw i64 4, %16
  %42 = trunc i64 %41 to i32
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @mlx5_cmd_exec(%struct.mlx5_core_dev* %40, i32* %18, i32 %42, i8* %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %3
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 (%struct.mlx5_core_dev*, i8*, i32, i32, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %49, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51, i32 %52)
  br label %92

54:                                               ; preds = %3
  %55 = load i32, i32* @query_hca_cap_out, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* @capability, align 4
  %58 = call i8* @MLX5_ADDR_OF(i32 %55, i8* %56, i32 %57)
  store i8* %58, i8** %11, align 8
  %59 = load i32, i32* %6, align 4
  switch i32 %59, label %84 [
    i32 128, label %60
    i32 129, label %72
  ]

60:                                               ; preds = %54
  %61 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %62 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %11, align 8
  %69 = load i32, i32* @hca_cap_union, align 4
  %70 = call i32 @MLX5_UN_SZ_BYTES(i32 %69)
  %71 = call i32 @memcpy(i32 %67, i8* %68, i32 %70)
  br label %91

72:                                               ; preds = %54
  %73 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %74 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %11, align 8
  %81 = load i32, i32* @hca_cap_union, align 4
  %82 = call i32 @MLX5_UN_SZ_BYTES(i32 %81)
  %83 = call i32 @memcpy(i32 %79, i8* %80, i32 %82)
  br label %91

84:                                               ; preds = %54
  %85 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 (%struct.mlx5_core_dev*, i8*, i32, i32, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %85, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %84, %72, %60
  br label %92

92:                                               ; preds = %91, %48
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @kfree(i8* %93)
  %95 = load i32, i32* %13, align 4
  %96 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %96)
  ret i32 %95
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_exec(%struct.mlx5_core_dev*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32, i32, ...) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @MLX5_UN_SZ_BYTES(i32) #1

declare dso_local i32 @kfree(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
