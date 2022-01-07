; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_set_eswitch_cvlan_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_set_eswitch_cvlan_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.mlx5_core_dev = type { i32 }

@modify_esw_vport_context_in = common dso_local global i32 0, align 4
@MLX5_MODIFY_ESW_VPORT_CONTEXT_CVLAN_INSERT_NONE = common dso_local global i64 0, align 8
@esw_vport_context = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@field_select = common dso_local global i32 0, align 4
@MLX5_MODIFY_ESW_VPORT_CONTEXT_FIELD_SELECT_CVLAN_STRIP = common dso_local global i64 0, align 8
@MLX5_MODIFY_ESW_VPORT_CONTEXT_FIELD_SELECT_CVLAN_INSERT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_set_eswitch_cvlan_info(%struct.mlx5_core_dev* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %17 = load i32, i32* @modify_esw_vport_context_in, align 4
  %18 = call i32 @MLX5_ST_SZ_DW(i32 %17)
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  %22 = mul nuw i64 4, %19
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(i32* %21, i32 0, i32 %23)
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @MLX5_MODIFY_ESW_VPORT_CONTEXT_CVLAN_INSERT_NONE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %7
  %29 = load i32, i32* @modify_esw_vport_context_in, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @esw_vport_context, i32 0, i32 4), align 4
  %31 = load i64, i64* %13, align 8
  %32 = call i32 @MLX5_SET(i32 %29, i32* %21, i32 %30, i64 %31)
  %33 = load i32, i32* @modify_esw_vport_context_in, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @esw_vport_context, i32 0, i32 3), align 4
  %35 = load i64, i64* %14, align 8
  %36 = call i32 @MLX5_SET(i32 %33, i32* %21, i32 %34, i64 %35)
  %37 = load i32, i32* @modify_esw_vport_context_in, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @esw_vport_context, i32 0, i32 2), align 4
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @MLX5_SET(i32 %37, i32* %21, i32 %38, i64 %39)
  br label %41

41:                                               ; preds = %28, %7
  %42 = load i32, i32* @modify_esw_vport_context_in, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @esw_vport_context, i32 0, i32 1), align 4
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @MLX5_SET(i32 %42, i32* %21, i32 %43, i64 %44)
  %46 = load i32, i32* @modify_esw_vport_context_in, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @esw_vport_context, i32 0, i32 0), align 4
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @MLX5_SET(i32 %46, i32* %21, i32 %47, i64 %48)
  %50 = load i32, i32* @modify_esw_vport_context_in, align 4
  %51 = load i32, i32* @field_select, align 4
  %52 = load i64, i64* @MLX5_MODIFY_ESW_VPORT_CONTEXT_FIELD_SELECT_CVLAN_STRIP, align 8
  %53 = load i64, i64* @MLX5_MODIFY_ESW_VPORT_CONTEXT_FIELD_SELECT_CVLAN_INSERT, align 8
  %54 = or i64 %52, %53
  %55 = call i32 @MLX5_SET(i32 %50, i32* %21, i32 %51, i64 %54)
  %56 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = mul nuw i64 4, %19
  %59 = trunc i64 %58 to i32
  %60 = call i32 @mlx5_modify_eswitch_vport_context(%struct.mlx5_core_dev* %56, i64 %57, i32* %21, i32 %59)
  %61 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %61)
  ret i32 %60
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i64) #1

declare dso_local i32 @mlx5_modify_eswitch_vport_context(%struct.mlx5_core_dev*, i64, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
