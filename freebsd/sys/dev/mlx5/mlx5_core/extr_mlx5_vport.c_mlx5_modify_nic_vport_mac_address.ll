; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_modify_nic_vport_mac_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_modify_nic_vport_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@modify_nic_vport_context_in = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to allocate inbox\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@field_select = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@vport_number = common dso_local global i32 0, align 4
@other_vport = common dso_local global i32 0, align 4
@nic_vport_context = common dso_local global i32 0, align 4
@permanent_address = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_modify_nic_vport_mac_address(%struct.mlx5_core_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @modify_nic_vport_context_in, align 4
  %14 = call i32 @MLX5_ST_SZ_BYTES(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i8* @mlx5_vzalloc(i32 %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %21 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %62

24:                                               ; preds = %3
  %25 = load i32, i32* @modify_nic_vport_context_in, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @field_select, i32 0, i32 0), align 4
  %28 = call i32 @MLX5_SET(i32 %25, i8* %26, i32 %27, i32 1)
  %29 = load i32, i32* @modify_nic_vport_context_in, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* @vport_number, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @MLX5_SET(i32 %29, i8* %30, i32 %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load i32, i32* @modify_nic_vport_context_in, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @other_vport, align 4
  %40 = call i32 @MLX5_SET(i32 %37, i8* %38, i32 %39, i32 1)
  br label %41

41:                                               ; preds = %36, %24
  %42 = load i32, i32* @modify_nic_vport_context_in, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* @nic_vport_context, align 4
  %45 = call i8* @MLX5_ADDR_OF(i32 %42, i8* %43, i32 %44)
  store i8* %45, i8** %11, align 8
  %46 = load i32, i32* @nic_vport_context, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* @permanent_address, align 4
  %49 = call i8* @MLX5_ADDR_OF(i32 %46, i8* %47, i32 %48)
  %50 = bitcast i8* %49 to i32*
  store i32* %50, i32** %12, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @ether_addr_copy(i32* %52, i32* %53)
  %55 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @mlx5_modify_nic_vport_context(%struct.mlx5_core_dev* %55, i8* %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @kvfree(i8* %59)
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %41, %19
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

declare dso_local i32 @mlx5_modify_nic_vport_context(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
