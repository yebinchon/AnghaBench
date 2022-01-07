; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_modify_nic_vport_port_guid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_modify_nic_vport_port_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@modify_nic_vport_context_in = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vport_group_manager = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@nic_vport_port_guid_modify = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to allocate inbox\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@field_select = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@vport_number = common dso_local global i32 0, align 4
@other_vport = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_modify_nic_vport_port_guid(%struct.mlx5_core_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @modify_nic_vport_context_in, align 4
  %13 = call i32 @MLX5_ST_SZ_BYTES(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %75

19:                                               ; preds = %3
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %21 = load i32, i32* @vport_group_manager, align 4
  %22 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %75

27:                                               ; preds = %19
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %29 = load i32, i32* @nic_vport_port_guid_modify, align 4
  %30 = call i32 @MLX5_CAP_ESW(%struct.mlx5_core_dev* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %75

35:                                               ; preds = %27
  %36 = load i32, i32* %9, align 4
  %37 = call i8* @mlx5_vzalloc(i32 %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %42 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %75

45:                                               ; preds = %35
  %46 = load i32, i32* @modify_nic_vport_context_in, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @field_select, i32 0, i32 0), align 4
  %49 = call i32 @MLX5_SET(i32 %46, i8* %47, i32 %48, i32 1)
  %50 = load i32, i32* @modify_nic_vport_context_in, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* @vport_number, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @MLX5_SET(i32 %50, i8* %51, i32 %52, i32 %53)
  %55 = load i32, i32* @modify_nic_vport_context_in, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* @other_vport, align 4
  %58 = call i32 @MLX5_SET(i32 %55, i8* %56, i32 %57, i32 1)
  %59 = load i32, i32* @modify_nic_vport_context_in, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i8* @MLX5_ADDR_OF(i32 %59, i8* %60, i8* %61)
  store i8* %62, i8** %11, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @MLX5_SET64(i8* %63, i8* %64, i32 %65, i32 %66)
  %68 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @mlx5_modify_nic_vport_context(%struct.mlx5_core_dev* %68, i8* %69, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @kvfree(i8* %72)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %45, %40, %32, %24, %16
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_CAP_ESW(%struct.mlx5_core_dev*, i32) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i8*) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_modify_nic_vport_context(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
