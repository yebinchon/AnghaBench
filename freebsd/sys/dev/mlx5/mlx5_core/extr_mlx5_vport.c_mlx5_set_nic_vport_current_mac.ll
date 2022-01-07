; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_set_nic_vport_current_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_set_nic_vport_current_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.mlx5_core_dev = type { i32 }

@modify_nic_vport_context_in = common dso_local global i32 0, align 4
@mac_address_layout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to allocate inbox\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_MODIFY_NIC_VPORT_CONTEXT = common dso_local global i32 0, align 4
@vport_number = common dso_local global i32 0, align 4
@field_select = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@nic_vport_context = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@MLX5_NIC_VPORT_LIST_TYPE_UC = common dso_local global i32 0, align 4
@mac_addr_47_32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_set_nic_vport_current_mac(%struct.mlx5_core_dev* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i32, i32* @modify_nic_vport_context_in, align 4
  %16 = call i32 @MLX5_ST_SZ_BYTES(i32 %15)
  %17 = load i32, i32* @mac_address_layout, align 4
  %18 = call i32 @MLX5_ST_SZ_BYTES(i32 %17)
  %19 = add nsw i32 %16, %18
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i8* @mlx5_vzalloc(i32 %20)
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %4
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %26 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %78

29:                                               ; preds = %4
  %30 = load i32, i32* @modify_nic_vport_context_in, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = load i32, i32* @opcode, align 4
  %33 = load i32, i32* @MLX5_CMD_OP_MODIFY_NIC_VPORT_CONTEXT, align 4
  %34 = call i32 @MLX5_SET(i32 %30, i8* %31, i32 %32, i32 %33)
  %35 = load i32, i32* @modify_nic_vport_context_in, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* @vport_number, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @MLX5_SET(i32 %35, i8* %36, i32 %37, i32 %38)
  %40 = load i32, i32* @modify_nic_vport_context_in, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @MLX5_SET(i32 %40, i8* %41, i32 %42, i32 %43)
  %45 = load i32, i32* @modify_nic_vport_context_in, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @field_select, i32 0, i32 0), align 4
  %48 = call i32 @MLX5_SET(i32 %45, i8* %46, i32 %47, i32 1)
  %49 = load i32, i32* @modify_nic_vport_context_in, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nic_vport_context, i32 0, i32 0), align 4
  %52 = load i32, i32* @MLX5_NIC_VPORT_LIST_TYPE_UC, align 4
  %53 = call i32 @MLX5_SET(i32 %49, i8* %50, i32 %51, i32 %52)
  %54 = load i32, i32* @modify_nic_vport_context_in, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nic_vport_context, i32 0, i32 1), align 4
  %57 = call i32 @MLX5_SET(i32 %54, i8* %55, i32 %56, i32 1)
  %58 = load i32, i32* @modify_nic_vport_context_in, align 4
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nic_vport_context, i32 0, i32 2), align 4
  %61 = call i64 @MLX5_ADDR_OF(i32 %58, i8* %59, i32 %60)
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %12, align 8
  %63 = load i32, i32* @mac_address_layout, align 4
  %64 = load i8*, i8** %12, align 8
  %65 = load i32, i32* @mac_addr_47_32, align 4
  %66 = call i64 @MLX5_ADDR_OF(i32 %63, i8* %64, i32 %65)
  %67 = inttoptr i64 %66 to i8*
  store i8* %67, i8** %13, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @ether_addr_copy(i8* %68, i8* %69)
  %71 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @mlx5_modify_nic_vport_context(%struct.mlx5_core_dev* %71, i8* %72, i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @kvfree(i8* %75)
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %29, %24
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i64 @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @ether_addr_copy(i8*, i8*) #1

declare dso_local i32 @mlx5_modify_nic_vport_context(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
