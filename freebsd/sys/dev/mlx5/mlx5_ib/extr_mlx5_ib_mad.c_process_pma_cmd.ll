; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mad.c_process_pma_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mad.c_process_pma_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_mad = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mlx5_ib_dev = type { i32 }
%struct.ib_class_port_info = type { i32 }
%struct.ib_pma_portcounters_ext = type { i32 }
%struct.ib_pma_portcounters = type { i32 }

@IB_PMA_CLASS_PORT_INFO = common dso_local global i64 0, align 8
@IB_PMA_CLASS_CAP_EXT_WIDTH = common dso_local global i32 0, align 4
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_RESULT_REPLY = common dso_local global i32 0, align 4
@IB_PMA_PORT_COUNTERS_EXT = common dso_local global i64 0, align 8
@query_vport_counter_out = common dso_local global i32 0, align 4
@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@ppcnt_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_mad*, %struct.ib_mad*)* @process_pma_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_pma_cmd(%struct.ib_device* %0, i32 %1, %struct.ib_mad* %2, %struct.ib_mad* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_mad*, align 8
  %9 = alloca %struct.ib_mad*, align 8
  %10 = alloca %struct.mlx5_ib_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ib_class_port_info, align 4
  %14 = alloca %struct.ib_pma_portcounters_ext*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ib_pma_portcounters*, align 8
  %17 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ib_mad* %2, %struct.ib_mad** %8, align 8
  store %struct.ib_mad* %3, %struct.ib_mad** %9, align 8
  %18 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %19 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %18)
  store %struct.mlx5_ib_dev* %19, %struct.mlx5_ib_dev** %10, align 8
  %20 = load %struct.ib_mad*, %struct.ib_mad** %8, align 8
  %21 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IB_PMA_CLASS_PORT_INFO, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %4
  %27 = bitcast %struct.ib_class_port_info* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 4, i1 false)
  %28 = load i32, i32* @IB_PMA_CLASS_CAP_EXT_WIDTH, align 4
  %29 = getelementptr inbounds %struct.ib_class_port_info, %struct.ib_class_port_info* %13, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %31 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 40
  %34 = call i32 @memcpy(i64 %33, %struct.ib_class_port_info* %13, i32 4)
  %35 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %36 = load i32, i32* @IB_MAD_RESULT_REPLY, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %5, align 4
  br label %114

38:                                               ; preds = %4
  %39 = load %struct.ib_mad*, %struct.ib_mad** %8, align 8
  %40 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IB_PMA_PORT_COUNTERS_EXT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %38
  %46 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %47 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 40
  %50 = inttoptr i64 %49 to %struct.ib_pma_portcounters_ext*
  store %struct.ib_pma_portcounters_ext* %50, %struct.ib_pma_portcounters_ext** %14, align 8
  %51 = load i32, i32* @query_vport_counter_out, align 4
  %52 = call i32 @MLX5_ST_SZ_BYTES(i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i8* @mlx5_vzalloc(i32 %53)
  store i8* %54, i8** %12, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %45
  %58 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %58, i32* %5, align 4
  br label %114

59:                                               ; preds = %45
  %60 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %61 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i8*, i8** %12, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @mlx5_core_query_vport_counter(i32 %62, i32 0, i32 0, i32 %63, i8* %64, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %59
  %70 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %14, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = call i32 @pma_cnt_ext_assign(%struct.ib_pma_portcounters_ext* %70, i8* %71)
  br label %73

73:                                               ; preds = %69, %59
  br label %103

74:                                               ; preds = %38
  %75 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %76 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 40
  %79 = inttoptr i64 %78 to %struct.ib_pma_portcounters*
  store %struct.ib_pma_portcounters* %79, %struct.ib_pma_portcounters** %16, align 8
  %80 = load i32, i32* @ppcnt_reg, align 4
  %81 = call i32 @MLX5_ST_SZ_BYTES(i32 %80)
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = call i8* @mlx5_vzalloc(i32 %82)
  store i8* %83, i8** %12, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %74
  %87 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %87, i32* %5, align 4
  br label %114

88:                                               ; preds = %74
  %89 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %90 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i8*, i8** %12, align 8
  %94 = load i32, i32* %17, align 4
  %95 = call i32 @mlx5_core_query_ib_ppcnt(i32 %91, i32 %92, i8* %93, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %88
  %99 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %16, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = call i32 @pma_cnt_assign(%struct.ib_pma_portcounters* %99, i8* %100)
  br label %102

102:                                              ; preds = %98, %88
  br label %103

103:                                              ; preds = %102, %73
  %104 = load i8*, i8** %12, align 8
  %105 = call i32 @kvfree(i8* %104)
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %109, i32* %5, align 4
  br label %114

110:                                              ; preds = %103
  %111 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %112 = load i32, i32* @IB_MAD_RESULT_REPLY, align 4
  %113 = or i32 %111, %112
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %110, %108, %86, %57, %26
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i64, %struct.ib_class_port_info*, i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i32 @mlx5_core_query_vport_counter(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @pma_cnt_ext_assign(%struct.ib_pma_portcounters_ext*, i8*) #1

declare dso_local i32 @mlx5_core_query_ib_ppcnt(i32, i32, i8*, i32) #1

declare dso_local i32 @pma_cnt_assign(%struct.ib_pma_portcounters*, i8*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
