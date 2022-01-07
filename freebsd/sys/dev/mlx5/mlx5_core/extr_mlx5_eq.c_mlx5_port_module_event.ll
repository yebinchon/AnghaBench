; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_eq.c_mlx5_port_module_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_eq.c_mlx5_port_module_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.mlx5_eqe = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlx5_eqe_port_module_event }
%struct.mlx5_eqe_port_module_event = type { i64, i64, i64 }

@PORT_MODULE_EVENT_MODULE_STATUS_MASK = common dso_local global i32 0, align 4
@PORT_MODULE_EVENT_ERROR_TYPE_MASK = common dso_local global i32 0, align 4
@MLX5_MODULE_STATUS_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Module %u, status: plugged and enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Module %u, status: unplugged\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Module %u, status: error, %s (%d)\0A\00", align 1
@MLX5_MODULE_EVENT_ERROR_NUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Module %u, unknown status %d\0A\00", align 1
@MLX5_MAX_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, %struct.mlx5_eqe*)* @mlx5_port_module_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_port_module_event(%struct.mlx5_core_dev* %0, %struct.mlx5_eqe* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_eqe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_eqe_port_module_event*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5_eqe* %1, %struct.mlx5_eqe** %4, align 8
  %9 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.mlx5_eqe_port_module_event* %11, %struct.mlx5_eqe_port_module_event** %8, align 8
  %12 = load %struct.mlx5_eqe_port_module_event*, %struct.mlx5_eqe_port_module_event** %8, align 8
  %13 = getelementptr inbounds %struct.mlx5_eqe_port_module_event, %struct.mlx5_eqe_port_module_event* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load %struct.mlx5_eqe_port_module_event*, %struct.mlx5_eqe_port_module_event** %8, align 8
  %17 = getelementptr inbounds %struct.mlx5_eqe_port_module_event, %struct.mlx5_eqe_port_module_event* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @PORT_MODULE_EVENT_MODULE_STATUS_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.mlx5_eqe_port_module_event*, %struct.mlx5_eqe_port_module_event** %8, align 8
  %23 = getelementptr inbounds %struct.mlx5_eqe_port_module_event, %struct.mlx5_eqe_port_module_event* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @PORT_MODULE_EVENT_ERROR_TYPE_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MLX5_MODULE_STATUS_NUM, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %2
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %31, %2
  %43 = load i32, i32* %6, align 4
  switch i32 %43, label %74 [
    i32 129, label %44
    i32 128, label %48
    i32 130, label %52
  ]

44:                                               ; preds = %42
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @mlx5_core_info(%struct.mlx5_core_dev* %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %79

48:                                               ; preds = %42
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @mlx5_core_info(%struct.mlx5_core_dev* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %79

52:                                               ; preds = %42
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @mlx5_port_module_event_error_type_to_string(i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @MLX5_MODULE_EVENT_ERROR_NUM, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %52
  %63 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %64 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %62, %52
  br label %79

74:                                               ; preds = %42
  %75 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @mlx5_core_info(%struct.mlx5_core_dev* %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %73, %48, %44
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @MLX5_MAX_PORTS, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %86 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %84, i32* %90, align 4
  br label %91

91:                                               ; preds = %83, %79
  ret void
}

declare dso_local i32 @mlx5_core_info(%struct.mlx5_core_dev*, i8*, i32, ...) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i32, i32, i32) #1

declare dso_local i32 @mlx5_port_module_event_error_type_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
