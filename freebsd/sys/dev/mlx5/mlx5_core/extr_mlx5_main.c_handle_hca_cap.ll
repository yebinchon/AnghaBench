; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_handle_hca_cap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_handle_hca_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32*, %struct.mlx5_profile* }
%struct.mlx5_profile = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@set_hca_cap_in = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MLX5_CAP_GENERAL = common dso_local global i64 0, align 8
@capability = common dso_local global i32 0, align 4
@cmd_hca_cap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Current Pkey table size %d Setting new size %d\0A\00", align 1
@pkey_table_size = common dso_local global i32 0, align 4
@MLX5_PROF_MASK_QP_SIZE = common dso_local global i32 0, align 4
@log_max_qp = common dso_local global i32 0, align 4
@cmdif_checksum = common dso_local global i32 0, align 4
@drain_sigerr = common dso_local global i32 0, align 4
@log_uar_page_sz = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*)* @handle_hca_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_hca_cap(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mlx5_profile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  store i8* null, i8** %3, align 8
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %8, i32 0, i32 1
  %10 = load %struct.mlx5_profile*, %struct.mlx5_profile** %9, align 8
  store %struct.mlx5_profile* %10, %struct.mlx5_profile** %4, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @set_hca_cap_in, align 4
  %14 = call i32 @MLX5_ST_SZ_BYTES(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 %15, i32 %16)
  store i8* %17, i8** %3, align 8
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %19 = load i64, i64* @MLX5_CAP_GENERAL, align 8
  %20 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %18, i64 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %84

24:                                               ; preds = %1
  %25 = load i32, i32* @set_hca_cap_in, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* @capability, align 4
  %28 = call i8* @MLX5_ADDR_OF(i32 %25, i8* %26, i32 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %31 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @MLX5_CAP_GENERAL, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @cmd_hca_cap, align 4
  %37 = call i32 @MLX5_ST_SZ_BYTES(i32 %36)
  %38 = call i32 @memcpy(i8* %29, i32 %35, i32 %37)
  %39 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %40 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %41 = load i32, i32* @pkey_table_size, align 4
  %42 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %40, i32 %41)
  %43 = call i32 @mlx5_to_sw_pkey_sz(i32 %42)
  %44 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %39, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %43, i32 128)
  %45 = load i32, i32* @cmd_hca_cap, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* @pkey_table_size, align 4
  %48 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %49 = call i32 @to_fw_pkey_sz(%struct.mlx5_core_dev* %48, i32 128)
  %50 = call i32 @MLX5_SET(i32 %45, i8* %46, i32 %47, i32 %49)
  %51 = load %struct.mlx5_profile*, %struct.mlx5_profile** %4, align 8
  %52 = getelementptr inbounds %struct.mlx5_profile, %struct.mlx5_profile* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MLX5_PROF_MASK_QP_SIZE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %24
  %58 = load i32, i32* @cmd_hca_cap, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* @log_max_qp, align 4
  %61 = load %struct.mlx5_profile*, %struct.mlx5_profile** %4, align 8
  %62 = getelementptr inbounds %struct.mlx5_profile, %struct.mlx5_profile* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @MLX5_SET(i32 %58, i8* %59, i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %57, %24
  %66 = load i32, i32* @cmd_hca_cap, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* @cmdif_checksum, align 4
  %69 = call i32 @MLX5_SET(i32 %66, i8* %67, i32 %68, i32 0)
  %70 = load i32, i32* @cmd_hca_cap, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* @drain_sigerr, align 4
  %73 = call i32 @MLX5_SET(i32 %70, i8* %71, i32 %72, i32 1)
  %74 = load i32, i32* @cmd_hca_cap, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* @log_uar_page_sz, align 4
  %77 = load i32, i32* @PAGE_SHIFT, align 4
  %78 = sub nsw i32 %77, 12
  %79 = call i32 @MLX5_SET(i32 %74, i8* %75, i32 %76, i32 %78)
  %80 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %81 = load i8*, i8** %3, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @set_caps(%struct.mlx5_core_dev* %80, i8* %81, i32 %82)
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %65, %23
  %85 = load i8*, i8** %3, align 8
  %86 = call i32 @kfree(i8* %85)
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5_core_get_caps(%struct.mlx5_core_dev*, i64) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_to_sw_pkey_sz(i32) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @to_fw_pkey_sz(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @set_caps(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
