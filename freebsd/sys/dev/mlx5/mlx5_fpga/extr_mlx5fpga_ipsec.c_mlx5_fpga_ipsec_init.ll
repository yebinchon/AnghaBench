; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_ipsec.c_mlx5_fpga_ipsec_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_ipsec.c_mlx5_fpga_ipsec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5_fpga_device* }
%struct.mlx5_fpga_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mlx5_fpga_conn*, i32, i32, i32 }
%struct.mlx5_fpga_conn = type { i32 }
%struct.mlx5_fpga_conn_attr = type { %struct.mlx5_fpga_device*, i32, i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Failed to retrieve IPSec extended capabilities: %d\0A\00", align 1
@SBU_QP_QUEUE_SIZE = common dso_local global i8* null, align 8
@mlx5_fpga_ipsec_recv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Error creating IPSec command connection %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fpga_ipsec_init(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_fpga_conn_attr, align 8
  %5 = alloca %struct.mlx5_fpga_device*, align 8
  %6 = alloca %struct.mlx5_fpga_conn*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %8 = bitcast %struct.mlx5_fpga_conn_attr* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 40, i1 false)
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %9, i32 0, i32 0
  %11 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %10, align 8
  store %struct.mlx5_fpga_device* %11, %struct.mlx5_fpga_device** %5, align 8
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %13 = call i32 @mlx5_fpga_is_ipsec_device(%struct.mlx5_core_dev* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %86

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.TYPE_3__* @kzalloc(i32 24, i32 %17)
  %19 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %19, i32 0, i32 0
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %20, align 8
  %21 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %22 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %86

28:                                               ; preds = %16
  %29 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %30 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %31 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mlx5_fpga_get_sbu_caps(%struct.mlx5_fpga_device* %29, i32 4, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %39, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %78

42:                                               ; preds = %28
  %43 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %44 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %49 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = call i32 @spin_lock_init(i32* %51)
  %53 = load i8*, i8** @SBU_QP_QUEUE_SIZE, align 8
  %54 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %4, i32 0, i32 3
  store i8* %53, i8** %54, align 8
  %55 = load i8*, i8** @SBU_QP_QUEUE_SIZE, align 8
  %56 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %4, i32 0, i32 2
  store i8* %55, i8** %56, align 8
  %57 = load i32, i32* @mlx5_fpga_ipsec_recv, align 4
  %58 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %4, i32 0, i32 1
  store i32 %57, i32* %58, align 8
  %59 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %60 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %4, i32 0, i32 0
  store %struct.mlx5_fpga_device* %59, %struct.mlx5_fpga_device** %60, align 8
  %61 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %62 = call %struct.mlx5_fpga_conn* @mlx5_fpga_sbu_conn_create(%struct.mlx5_fpga_device* %61, %struct.mlx5_fpga_conn_attr* %4)
  store %struct.mlx5_fpga_conn* %62, %struct.mlx5_fpga_conn** %6, align 8
  %63 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %6, align 8
  %64 = call i64 @IS_ERR(%struct.mlx5_fpga_conn* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %42
  %67 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %6, align 8
  %68 = call i32 @PTR_ERR(%struct.mlx5_fpga_conn* %67)
  store i32 %68, i32* %7, align 4
  %69 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %69, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %78

72:                                               ; preds = %42
  %73 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %6, align 8
  %74 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %75 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store %struct.mlx5_fpga_conn* %73, %struct.mlx5_fpga_conn** %77, align 8
  store i32 0, i32* %2, align 4
  br label %86

78:                                               ; preds = %66, %38
  %79 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %80 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = call i32 @kfree(%struct.TYPE_3__* %81)
  %83 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %84 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %83, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %84, align 8
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %78, %72, %25, %15
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlx5_fpga_is_ipsec_device(%struct.mlx5_core_dev*) #2

declare dso_local %struct.TYPE_3__* @kzalloc(i32, i32) #2

declare dso_local i32 @mlx5_fpga_get_sbu_caps(%struct.mlx5_fpga_device*, i32, i32) #2

declare dso_local i32 @mlx5_fpga_err(%struct.mlx5_fpga_device*, i8*, i32) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local %struct.mlx5_fpga_conn* @mlx5_fpga_sbu_conn_create(%struct.mlx5_fpga_device*, %struct.mlx5_fpga_conn_attr*) #2

declare dso_local i64 @IS_ERR(%struct.mlx5_fpga_conn*) #2

declare dso_local i32 @PTR_ERR(%struct.mlx5_fpga_conn*) #2

declare dso_local i32 @kfree(%struct.TYPE_3__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
