; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_get_port_caps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_get_port_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ib_device_attr = type { i32, i32 }
%struct.ib_port_attr = type { i32, i32 }
%struct.ib_udata = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"query_device failed %d\0A\00", align 1
@num_ports = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"query_port %d failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"pkey_table_len %d, gid_table_len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*)* @get_port_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_port_caps(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca %struct.mlx5_ib_dev*, align 8
  %3 = alloca %struct.ib_device_attr*, align 8
  %4 = alloca %struct.ib_port_attr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_udata, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %2, align 8
  store %struct.ib_device_attr* null, %struct.ib_device_attr** %3, align 8
  store %struct.ib_port_attr* null, %struct.ib_port_attr** %4, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %5, align 4
  %10 = bitcast %struct.ib_udata* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ib_port_attr* @kmalloc(i32 8, i32 %11)
  store %struct.ib_port_attr* %12, %struct.ib_port_attr** %4, align 8
  %13 = load %struct.ib_port_attr*, %struct.ib_port_attr** %4, align 8
  %14 = icmp ne %struct.ib_port_attr* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %96

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ib_port_attr* @kmalloc(i32 8, i32 %17)
  %19 = bitcast %struct.ib_port_attr* %18 to %struct.ib_device_attr*
  store %struct.ib_device_attr* %19, %struct.ib_device_attr** %3, align 8
  %20 = load %struct.ib_device_attr*, %struct.ib_device_attr** %3, align 8
  %21 = icmp ne %struct.ib_device_attr* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %96

23:                                               ; preds = %16
  %24 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %24, i32 0, i32 1
  %26 = load %struct.ib_device_attr*, %struct.ib_device_attr** %3, align 8
  %27 = bitcast %struct.ib_device_attr* %26 to %struct.ib_port_attr*
  %28 = call i32 @mlx5_ib_query_device(i32* %25, %struct.ib_port_attr* %27, %struct.ib_udata* %7)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_warn(%struct.mlx5_ib_dev* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %96

35:                                               ; preds = %23
  store i32 1, i32* %6, align 4
  br label %36

36:                                               ; preds = %92, %35
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %39 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* @num_ports, align 4
  %42 = call i32 @MLX5_CAP_GEN(%struct.TYPE_4__* %40, i32 %41)
  %43 = icmp sle i32 %37, %42
  br i1 %43, label %44, label %95

44:                                               ; preds = %36
  %45 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %46 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.ib_port_attr*, %struct.ib_port_attr** %4, align 8
  %49 = call i32 @mlx5_ib_query_port(i32* %46, i32 %47, %struct.ib_port_attr* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_warn(%struct.mlx5_ib_dev* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  br label %95

57:                                               ; preds = %44
  %58 = load %struct.ib_device_attr*, %struct.ib_device_attr** %3, align 8
  %59 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %62 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i32 %60, i32* %70, align 4
  %71 = load %struct.ib_port_attr*, %struct.ib_port_attr** %4, align 8
  %72 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %75 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 %73, i32* %83, align 4
  %84 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %85 = load %struct.ib_device_attr*, %struct.ib_device_attr** %3, align 8
  %86 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ib_port_attr*, %struct.ib_port_attr** %4, align 8
  %89 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %57
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %36

95:                                               ; preds = %52, %36
  br label %96

96:                                               ; preds = %95, %31, %22, %15
  %97 = load %struct.ib_port_attr*, %struct.ib_port_attr** %4, align 8
  %98 = call i32 @kfree(%struct.ib_port_attr* %97)
  %99 = load %struct.ib_device_attr*, %struct.ib_device_attr** %3, align 8
  %100 = bitcast %struct.ib_device_attr* %99 to %struct.ib_port_attr*
  %101 = call i32 @kfree(%struct.ib_port_attr* %100)
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ib_port_attr* @kmalloc(i32, i32) #2

declare dso_local i32 @mlx5_ib_query_device(i32*, %struct.ib_port_attr*, %struct.ib_udata*) #2

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32, ...) #2

declare dso_local i32 @MLX5_CAP_GEN(%struct.TYPE_4__*, i32) #2

declare dso_local i32 @mlx5_ib_query_port(i32*, i32, %struct.ib_port_attr*) #2

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i32, i32) #2

declare dso_local i32 @kfree(%struct.ib_port_attr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
