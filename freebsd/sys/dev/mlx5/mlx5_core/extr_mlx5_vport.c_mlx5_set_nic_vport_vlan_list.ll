; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_set_nic_vport_vlan_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_set_nic_vport_vlan_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@modify_nic_vport_context_in = common dso_local global i32 0, align 4
@vlan_layout = common dso_local global i32 0, align 4
@log_max_vlan_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Requested list size (%d) > (%d) max_list_size\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to allocate inbox\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@vport_number = common dso_local global i32 0, align 4
@other_vport = common dso_local global i32 0, align 4
@field_select = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@nic_vport_context = common dso_local global i32 0, align 4
@allowed_list_type = common dso_local global i32 0, align 4
@MLX5_NIC_VPORT_LIST_TYPE_VLAN = common dso_local global i32 0, align 4
@allowed_list_size = common dso_local global i32 0, align 4
@current_uc_mac_address = common dso_local global i32* null, align 8
@vlan = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_set_nic_vport_vlan_list(%struct.mlx5_core_dev* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @modify_nic_vport_context_in, align 4
  %18 = call i32 @MLX5_ST_SZ_BYTES(i32 %17)
  %19 = load i32, i32* @vlan_layout, align 4
  %20 = call i32 @MLX5_ST_SZ_BYTES(i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = mul nsw i32 %20, %21
  %23 = add nsw i32 %18, %22
  store i32 %23, i32* %14, align 4
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %25 = load i32, i32* @log_max_vlan_list, align 4
  %26 = call i32 @MLX5_CAP_GEN_MAX(%struct.mlx5_core_dev* %24, i32 %25)
  %27 = shl i32 1, %26
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %4
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %15, align 4
  %35 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* @ENOSPC, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %113

38:                                               ; preds = %4
  %39 = load i32, i32* %14, align 4
  %40 = call i8* @mlx5_vzalloc(i32 %39)
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %45 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %113

48:                                               ; preds = %38
  %49 = load i32, i32* @modify_nic_vport_context_in, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* @vport_number, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @MLX5_SET(i32 %49, i8* %50, i32 %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load i32, i32* @modify_nic_vport_context_in, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* @other_vport, align 4
  %60 = call i32 @MLX5_SET(i32 %57, i8* %58, i32 %59, i32 1)
  br label %61

61:                                               ; preds = %56, %48
  %62 = load i32, i32* @modify_nic_vport_context_in, align 4
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @field_select, i32 0, i32 0), align 4
  %65 = call i32 @MLX5_SET(i32 %62, i8* %63, i32 %64, i32 1)
  %66 = load i32, i32* @modify_nic_vport_context_in, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* @nic_vport_context, align 4
  %69 = call i8* @MLX5_ADDR_OF(i32 %66, i8* %67, i32 %68)
  store i8* %69, i8** %11, align 8
  %70 = load i32, i32* @nic_vport_context, align 4
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* @allowed_list_type, align 4
  %73 = load i32, i32* @MLX5_NIC_VPORT_LIST_TYPE_VLAN, align 4
  %74 = call i32 @MLX5_SET(i32 %70, i8* %71, i32 %72, i32 %73)
  %75 = load i32, i32* @nic_vport_context, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* @allowed_list_size, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @MLX5_SET(i32 %75, i8* %76, i32 %77, i32 %78)
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %102, %61
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %80
  %85 = load i32, i32* @nic_vport_context, align 4
  %86 = load i8*, i8** %11, align 8
  %87 = load i32*, i32** @current_uc_mac_address, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @MLX5_ADDR_OF(i32 %85, i8* %86, i32 %91)
  store i8* %92, i8** %16, align 8
  %93 = load i32, i32* @vlan_layout, align 4
  %94 = load i8*, i8** %16, align 8
  %95 = load i32, i32* @vlan, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @MLX5_SET(i32 %93, i8* %94, i32 %95, i32 %100)
  br label %102

102:                                              ; preds = %84
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %80

105:                                              ; preds = %80
  %106 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @mlx5_modify_nic_vport_context(%struct.mlx5_core_dev* %106, i8* %107, i32 %108)
  store i32 %109, i32* %13, align 4
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 @kvfree(i8* %110)
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %105, %43, %31
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @MLX5_CAP_GEN_MAX(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @mlx5_modify_nic_vport_context(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
