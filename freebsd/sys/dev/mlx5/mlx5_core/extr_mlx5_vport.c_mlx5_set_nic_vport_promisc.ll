; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_set_nic_vport_promisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_set_nic_vport_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@modify_nic_vport_context_in = common dso_local global i32 0, align 4
@nic_vport_context = common dso_local global i32 0, align 4
@vport_number = common dso_local global i32 0, align 4
@other_vport = common dso_local global i32 0, align 4
@field_select = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_set_nic_vport_promisc(%struct.mlx5_core_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @modify_nic_vport_context_in, align 4
  %15 = call i32 @MLX5_ST_SZ_BYTES(i32 %14)
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* @modify_nic_vport_context_in, align 4
  %20 = load i32, i32* @nic_vport_context, align 4
  %21 = call i32* @MLX5_ADDR_OF(i32 %19, i32* %18, i32 %20)
  store i32* %21, i32** %13, align 8
  %22 = load i32, i32* @modify_nic_vport_context_in, align 4
  %23 = call i32 @MLX5_ST_SZ_BYTES(i32 %22)
  %24 = call i32 @memset(i32* %18, i32 0, i32 %23)
  %25 = load i32, i32* @modify_nic_vport_context_in, align 4
  %26 = load i32, i32* @vport_number, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @MLX5_SET(i32 %25, i32* %18, i32 %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load i32, i32* @modify_nic_vport_context_in, align 4
  %33 = load i32, i32* @other_vport, align 4
  %34 = call i32 @MLX5_SET(i32 %32, i32* %18, i32 %33, i32 1)
  br label %35

35:                                               ; preds = %31, %5
  %36 = load i32, i32* @modify_nic_vport_context_in, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @field_select, i32 0, i32 0), align 4
  %38 = call i32 @MLX5_SET(i32 %36, i32* %18, i32 %37, i32 1)
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i32, i32* @nic_vport_context, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @MLX5_SET(i32 %42, i32* %43, i32 %44, i32 1)
  br label %46

46:                                               ; preds = %41, %35
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* @nic_vport_context, align 4
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @MLX5_SET(i32 %50, i32* %51, i32 %52, i32 1)
  br label %54

54:                                               ; preds = %49, %46
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* @nic_vport_context, align 4
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @MLX5_SET(i32 %58, i32* %59, i32 %60, i32 1)
  br label %62

62:                                               ; preds = %57, %54
  %63 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %64 = mul nuw i64 4, %16
  %65 = trunc i64 %64 to i32
  %66 = call i32 @mlx5_modify_nic_vport_context(%struct.mlx5_core_dev* %63, i32* %18, i32 %65)
  %67 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %67)
  ret i32 %66
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @mlx5_modify_nic_vport_context(%struct.mlx5_core_dev*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
