; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_set_nic_vport_permanent_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_set_nic_vport_permanent_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@modify_nic_vport_context_in = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to allocate inbox\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_MODIFY_NIC_VPORT_CONTEXT = common dso_local global i32 0, align 4
@vport_number = common dso_local global i32 0, align 4
@other_vport = common dso_local global i32 0, align 4
@field_select = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@nic_vport_context = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_set_nic_vport_permanent_mac(%struct.mlx5_core_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @modify_nic_vport_context_in, align 4
  %13 = call i32 @MLX5_ST_SZ_BYTES(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i8* @mlx5_vzalloc(i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %20 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %57

23:                                               ; preds = %3
  %24 = load i32, i32* @modify_nic_vport_context_in, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* @opcode, align 4
  %27 = load i32, i32* @MLX5_CMD_OP_MODIFY_NIC_VPORT_CONTEXT, align 4
  %28 = call i32 @MLX5_SET(i32 %24, i8* %25, i32 %26, i32 %27)
  %29 = load i32, i32* @modify_nic_vport_context_in, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* @vport_number, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @MLX5_SET(i32 %29, i8* %30, i32 %31, i32 %32)
  %34 = load i32, i32* @modify_nic_vport_context_in, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* @other_vport, align 4
  %37 = call i32 @MLX5_SET(i32 %34, i8* %35, i32 %36, i32 1)
  %38 = load i32, i32* @modify_nic_vport_context_in, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @field_select, i32 0, i32 0), align 4
  %41 = call i32 @MLX5_SET(i32 %38, i8* %39, i32 %40, i32 1)
  %42 = load i32, i32* @modify_nic_vport_context_in, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nic_vport_context, i32 0, i32 0, i32 0), align 4
  %45 = call i64 @MLX5_ADDR_OF(i32 %42, i8* %43, i32 %44)
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @ether_addr_copy(i32* %47, i32* %48)
  %50 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @mlx5_modify_nic_vport_context(%struct.mlx5_core_dev* %50, i8* %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @kvfree(i8* %54)
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %23, %18
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i64 @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

declare dso_local i32 @mlx5_modify_nic_vport_context(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
