; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_conn.c_mlx5_fpga_conn_device_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_conn.c_mlx5_fpga_conn_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_device = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Failed to enable RoCE: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"get_uars_page failed, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Allocated UAR index %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"alloc pd failed, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Allocated PD %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"create mkey failed, %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Created mkey 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fpga_conn_device_init(%struct.mlx5_fpga_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_fpga_device*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %3, align 8
  %5 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @mlx5_nic_vport_enable_roce(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %115

15:                                               ; preds = %1
  %16 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_8__* @mlx5_get_uars_page(i32 %18)
  %20 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %22, align 8
  %23 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = call i64 @IS_ERR(%struct.TYPE_8__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %15
  %30 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %31 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = call i32 @PTR_ERR(%struct.TYPE_8__* %33)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %110

38:                                               ; preds = %15
  %39 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %40 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %41 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %48 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %51 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = call i32 @mlx5_core_alloc_pd(i32 %49, i32* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %38
  %57 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %101

60:                                               ; preds = %38
  %61 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %62 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %63 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device* %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  %67 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %68 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %71 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %75 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = call i32 @mlx5_fpga_conn_create_mkey(i32 %69, i32 %73, %struct.TYPE_9__* %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %60
  %81 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  br label %92

84:                                               ; preds = %60
  %85 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %86 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %87 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device* %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  store i32 0, i32* %2, align 4
  br label %117

92:                                               ; preds = %80
  %93 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %94 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %97 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @mlx5_core_dealloc_pd(i32 %95, i32 %99)
  br label %101

101:                                              ; preds = %92, %56
  %102 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %103 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %106 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = call i32 @mlx5_put_uars_page(i32 %104, %struct.TYPE_8__* %108)
  br label %110

110:                                              ; preds = %101, %29
  %111 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %112 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @mlx5_nic_vport_disable_roce(i32 %113)
  br label %115

115:                                              ; preds = %110, %11
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %115, %84
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @mlx5_nic_vport_enable_roce(i32) #1

declare dso_local i32 @mlx5_fpga_err(%struct.mlx5_fpga_device*, i8*, i32) #1

declare dso_local %struct.TYPE_8__* @mlx5_get_uars_page(i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device*, i8*, i32) #1

declare dso_local i32 @mlx5_core_alloc_pd(i32, i32*) #1

declare dso_local i32 @mlx5_fpga_conn_create_mkey(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @mlx5_core_dealloc_pd(i32, i32) #1

declare dso_local i32 @mlx5_put_uars_page(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @mlx5_nic_vport_disable_roce(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
