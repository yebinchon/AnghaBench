; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_nic_vport_modify_local_lb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_nic_vport_modify_local_lb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mlx5_core_dev = type { i32 }

@modify_nic_vport_context_in = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to allocate inbox\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@vport_number = common dso_local global i32 0, align 4
@MLX5_LOCAL_MC_LB = common dso_local global i32 0, align 4
@field_select = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@nic_vport_context = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_nic_vport_modify_local_lb(%struct.mlx5_core_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @modify_nic_vport_context_in, align 4
  %12 = call i32 @MLX5_ST_SZ_BYTES(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i8* @mlx5_vzalloc(i32 %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %19 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %58

22:                                               ; preds = %3
  %23 = load i32, i32* @modify_nic_vport_context_in, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* @vport_number, align 4
  %26 = call i32 @MLX5_SET(i32 %23, i8* %24, i32 %25, i32 0)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @MLX5_LOCAL_MC_LB, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %22
  %31 = load i32, i32* @modify_nic_vport_context_in, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @field_select, i32 0, i32 1), align 4
  %34 = call i32 @MLX5_SET(i32 %31, i8* %32, i32 %33, i32 1)
  %35 = load i32, i32* @modify_nic_vport_context_in, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nic_vport_context, i32 0, i32 1), align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @MLX5_SET(i32 %35, i8* %36, i32 %37, i32 %38)
  br label %50

40:                                               ; preds = %22
  %41 = load i32, i32* @modify_nic_vport_context_in, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @field_select, i32 0, i32 0), align 4
  %44 = call i32 @MLX5_SET(i32 %41, i8* %42, i32 %43, i32 1)
  %45 = load i32, i32* @modify_nic_vport_context_in, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nic_vport_context, i32 0, i32 0), align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @MLX5_SET(i32 %45, i8* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %40, %30
  %51 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @mlx5_modify_nic_vport_context(%struct.mlx5_core_dev* %51, i8* %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @kvfree(i8* %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %50, %17
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @mlx5_modify_nic_vport_context(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
