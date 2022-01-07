; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_ib_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_ib_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_ib_dev = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ib_event = type { %struct.TYPE_6__, i32*, i32 }
%struct.TYPE_6__ = type { i32 }

@IB_EVENT_DEVICE_FATAL = common dso_local global i32 0, align 4
@IB_LINK_LAYER_ETHERNET = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ACTIVE = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ERR = common dso_local global i32 0, align 4
@IB_EVENT_LID_CHANGE = common dso_local global i32 0, align 4
@IB_EVENT_PKEY_CHANGE = common dso_local global i32 0, align 4
@IB_EVENT_GID_CHANGE = common dso_local global i32 0, align 4
@IB_EVENT_CLIENT_REREGISTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"warning: event(%d) on port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, i8*, i32, i64)* @mlx5_ib_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_ib_event(%struct.mlx5_core_dev* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.mlx5_ib_dev*, align 8
  %10 = alloca %struct.ib_event, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.mlx5_ib_dev*
  store %struct.mlx5_ib_dev* %14, %struct.mlx5_ib_dev** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load i64, i64* %8, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %63 [
    i32 128, label %18
    i32 129, label %23
    i32 131, label %23
    i32 130, label %23
    i32 133, label %41
    i32 132, label %44
    i32 134, label %57
    i32 135, label %60
  ]

18:                                               ; preds = %4
  %19 = load i32, i32* @IB_EVENT_DEVICE_FATAL, align 4
  %20 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %10, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %22 = call i32 @mlx5_ib_handle_internal_error(%struct.mlx5_ib_dev* %21)
  store i32 1, i32* %11, align 4
  br label %64

23:                                               ; preds = %4, %4, %4
  %24 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @mlx5_ib_port_link_layer(i32* %25, i32 %26)
  %28 = load i32, i32* @IB_LINK_LAYER_ETHERNET, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %94

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 129
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @IB_EVENT_PORT_ACTIVE, align 4
  br label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @IB_EVENT_PORT_ERR, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %10, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  br label %64

41:                                               ; preds = %4
  %42 = load i32, i32* @IB_EVENT_LID_CHANGE, align 4
  %43 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %10, i32 0, i32 2
  store i32 %42, i32* %43, align 8
  br label %64

44:                                               ; preds = %4
  %45 = load i32, i32* @IB_EVENT_PKEY_CHANGE, align 4
  %46 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %10, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %48 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @schedule_work(i32* %55)
  br label %64

57:                                               ; preds = %4
  %58 = load i32, i32* @IB_EVENT_GID_CHANGE, align 4
  %59 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %10, i32 0, i32 2
  store i32 %58, i32* %59, align 8
  br label %64

60:                                               ; preds = %4
  %61 = load i32, i32* @IB_EVENT_CLIENT_REREGISTER, align 4
  %62 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %10, i32 0, i32 2
  store i32 %61, i32* %62, align 8
  br label %64

63:                                               ; preds = %4
  br label %94

64:                                               ; preds = %60, %57, %44, %41, %38, %18
  %65 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %66 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %10, i32 0, i32 1
  store i32* %66, i32** %67, align 8
  %68 = load i32, i32* %12, align 4
  %69 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %10, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %72 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @rdma_is_port_valid(i32* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %64
  %77 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %79)
  br label %94

81:                                               ; preds = %64
  %82 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %83 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 @ib_dispatch_event(%struct.ib_event* %10)
  br label %88

88:                                               ; preds = %86, %81
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %93 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  br label %94

94:                                               ; preds = %30, %63, %76, %91, %88
  ret void
}

declare dso_local i32 @mlx5_ib_handle_internal_error(%struct.mlx5_ib_dev*) #1

declare dso_local i32 @mlx5_ib_port_link_layer(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @rdma_is_port_valid(i32*, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32, i32) #1

declare dso_local i32 @ib_dispatch_event(%struct.ib_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
