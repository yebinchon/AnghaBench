; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_mlx4_ib_process_mad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_mlx4_ib_process_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ib_grh = type { i32 }
%struct.ib_mad_hdr = type { i32 }
%struct.mlx4_ib_dev = type { i32 }
%struct.ib_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@IB_LINK_LAYER_INFINIBAND = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_PERF_MGMT = common dso_local global i64 0, align 8
@IB_PMA_PORT_COUNTERS = common dso_local global i64 0, align 8
@IB_PMA_PORT_COUNTERS_EXT = common dso_local global i64 0, align 8
@IB_PMA_CLASS_PORT_INFO = common dso_local global i64 0, align 8
@IB_LINK_LAYER_ETHERNET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_process_mad(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_wc* %3, %struct.ib_grh* %4, %struct.ib_mad_hdr* %5, i64 %6, %struct.ib_mad_hdr* %7, i64* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ib_wc*, align 8
  %16 = alloca %struct.ib_grh*, align 8
  %17 = alloca %struct.ib_mad_hdr*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.ib_mad_hdr*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.mlx4_ib_dev*, align 8
  %23 = alloca %struct.ib_mad*, align 8
  %24 = alloca %struct.ib_mad*, align 8
  %25 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store %struct.ib_wc* %3, %struct.ib_wc** %15, align 8
  store %struct.ib_grh* %4, %struct.ib_grh** %16, align 8
  store %struct.ib_mad_hdr* %5, %struct.ib_mad_hdr** %17, align 8
  store i64 %6, i64* %18, align 8
  store %struct.ib_mad_hdr* %7, %struct.ib_mad_hdr** %19, align 8
  store i64* %8, i64** %20, align 8
  store i32* %9, i32** %21, align 8
  %26 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %27 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %26)
  store %struct.mlx4_ib_dev* %27, %struct.mlx4_ib_dev** %22, align 8
  %28 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %17, align 8
  %29 = bitcast %struct.ib_mad_hdr* %28 to %struct.ib_mad*
  store %struct.ib_mad* %29, %struct.ib_mad** %23, align 8
  %30 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %19, align 8
  %31 = bitcast %struct.ib_mad_hdr* %30 to %struct.ib_mad*
  store %struct.ib_mad* %31, %struct.ib_mad** %24, align 8
  %32 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @rdma_port_get_link_layer(%struct.ib_device* %32, i32 %33)
  store i32 %34, i32* %25, align 4
  %35 = load i64, i64* %18, align 8
  %36 = icmp ne i64 %35, 16
  br i1 %36, label %41, label %37

37:                                               ; preds = %10
  %38 = load i64*, i64** %20, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 16
  br label %41

41:                                               ; preds = %37, %10
  %42 = phi i1 [ true, %10 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i64 @WARN_ON_ONCE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %47, i32* %11, align 4
  br label %120

48:                                               ; preds = %41
  %49 = load i32, i32* %25, align 4
  %50 = load i32, i32* @IB_LINK_LAYER_INFINIBAND, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %104

52:                                               ; preds = %48
  %53 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %22, align 8
  %54 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @mlx4_is_slave(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %95

58:                                               ; preds = %52
  %59 = load %struct.ib_mad*, %struct.ib_mad** %23, align 8
  %60 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IB_MGMT_CLASS_PERF_MGMT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %95

65:                                               ; preds = %58
  %66 = load %struct.ib_mad*, %struct.ib_mad** %23, align 8
  %67 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @IB_PMA_PORT_COUNTERS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %86, label %72

72:                                               ; preds = %65
  %73 = load %struct.ib_mad*, %struct.ib_mad** %23, align 8
  %74 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @IB_PMA_PORT_COUNTERS_EXT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %86, label %79

79:                                               ; preds = %72
  %80 = load %struct.ib_mad*, %struct.ib_mad** %23, align 8
  %81 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @IB_PMA_CLASS_PORT_INFO, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %79, %72, %65
  %87 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %91 = load %struct.ib_grh*, %struct.ib_grh** %16, align 8
  %92 = load %struct.ib_mad*, %struct.ib_mad** %23, align 8
  %93 = load %struct.ib_mad*, %struct.ib_mad** %24, align 8
  %94 = call i32 @iboe_process_mad(%struct.ib_device* %87, i32 %88, i32 %89, %struct.ib_wc* %90, %struct.ib_grh* %91, %struct.ib_mad* %92, %struct.ib_mad* %93)
  store i32 %94, i32* %11, align 4
  br label %120

95:                                               ; preds = %79, %58, %52
  %96 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %100 = load %struct.ib_grh*, %struct.ib_grh** %16, align 8
  %101 = load %struct.ib_mad*, %struct.ib_mad** %23, align 8
  %102 = load %struct.ib_mad*, %struct.ib_mad** %24, align 8
  %103 = call i32 @ib_process_mad(%struct.ib_device* %96, i32 %97, i32 %98, %struct.ib_wc* %99, %struct.ib_grh* %100, %struct.ib_mad* %101, %struct.ib_mad* %102)
  store i32 %103, i32* %11, align 4
  br label %120

104:                                              ; preds = %48
  %105 = load i32, i32* %25, align 4
  %106 = load i32, i32* @IB_LINK_LAYER_ETHERNET, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %113 = load %struct.ib_grh*, %struct.ib_grh** %16, align 8
  %114 = load %struct.ib_mad*, %struct.ib_mad** %23, align 8
  %115 = load %struct.ib_mad*, %struct.ib_mad** %24, align 8
  %116 = call i32 @iboe_process_mad(%struct.ib_device* %109, i32 %110, i32 %111, %struct.ib_wc* %112, %struct.ib_grh* %113, %struct.ib_mad* %114, %struct.ib_mad* %115)
  store i32 %116, i32* %11, align 4
  br label %120

117:                                              ; preds = %104
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %11, align 4
  br label %120

120:                                              ; preds = %117, %108, %95, %86, %46
  %121 = load i32, i32* %11, align 4
  ret i32 %121
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @rdma_port_get_link_layer(%struct.ib_device*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @mlx4_is_slave(i32) #1

declare dso_local i32 @iboe_process_mad(%struct.ib_device*, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*, %struct.ib_mad*) #1

declare dso_local i32 @ib_process_mad(%struct.ib_device*, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*, %struct.ib_mad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
