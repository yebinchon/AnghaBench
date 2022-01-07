; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_update_qps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_update_qps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32*, i32, %struct.mlx4_ib_qp**, %struct.TYPE_4__ }
%struct.mlx4_ib_qp = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.net_device = type { i32 }
%struct.mlx4_update_qp_params = type { i32 }

@MLX4_IB_INVALID_MAC = common dso_local global i64 0, align 8
@MLX4_UPDATE_QP_SMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_dev*, %struct.net_device*, i32)* @mlx4_ib_update_qps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_ib_update_qps(%struct.mlx4_ib_dev* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_ib_dev*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mlx4_ib_qp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mlx4_update_qp_params, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %13 = load i64, i64* @MLX4_IB_INVALID_MAC, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call i32 @IF_LLADDR(%struct.net_device* %14)
  %16 = call i64 @mlx4_mac_to_u64(i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @atomic64_set(i32* %24, i64 %25)
  %27 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %28 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @mlx4_is_mfunc(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  br label %138

33:                                               ; preds = %3
  %34 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %35 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %43 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %42, i32 0, i32 2
  %44 = load %struct.mlx4_ib_qp**, %struct.mlx4_ib_qp*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %44, i64 %47
  %49 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %48, align 8
  store %struct.mlx4_ib_qp* %49, %struct.mlx4_ib_qp** %9, align 8
  %50 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %51 = icmp ne %struct.mlx4_ib_qp* %50, null
  br i1 %51, label %52, label %110

52:                                               ; preds = %33
  %53 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %54 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %53, i32 0, i32 0
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %57 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %111

64:                                               ; preds = %52
  %65 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %66 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @mlx4_register_mac(i32 %67, i32 %68, i64 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %111

74:                                               ; preds = %64
  %75 = load i32, i32* %10, align 4
  %76 = getelementptr inbounds %struct.mlx4_update_qp_params, %struct.mlx4_update_qp_params* %12, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %78 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %81 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @MLX4_UPDATE_QP_SMAC, align 4
  %85 = call i64 @mlx4_update_qp(i32 %79, i32 %83, i32 %84, %struct.mlx4_update_qp_params* %12)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %74
  %88 = load i64, i64* %7, align 8
  store i64 %88, i64* %8, align 8
  br label %111

89:                                               ; preds = %74
  %90 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %91 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i64, i64* %11, align 8
  store i64 %96, i64* %8, align 8
  br label %97

97:                                               ; preds = %95, %89
  %98 = load i64, i64* %7, align 8
  %99 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %100 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i64 %98, i64* %101, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %104 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %108 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  store i32 %106, i32* %109, align 4
  br label %110

110:                                              ; preds = %97, %33
  br label %111

111:                                              ; preds = %110, %87, %73, %63
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* @MLX4_IB_INVALID_MAC, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %117 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = load i64, i64* %8, align 8
  %121 = call i32 @mlx4_unregister_mac(i32 %118, i32 %119, i64 %120)
  br label %122

122:                                              ; preds = %115, %111
  %123 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %124 = icmp ne %struct.mlx4_ib_qp* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %127 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %126, i32 0, i32 0
  %128 = call i32 @mutex_unlock(i32* %127)
  br label %129

129:                                              ; preds = %125, %122
  %130 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %131 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = call i32 @mutex_unlock(i32* %136)
  br label %138

138:                                              ; preds = %129, %32
  ret void
}

declare dso_local i64 @mlx4_mac_to_u64(i32) #1

declare dso_local i32 @IF_LLADDR(%struct.net_device*) #1

declare dso_local i32 @atomic64_set(i32*, i64) #1

declare dso_local i32 @mlx4_is_mfunc(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_register_mac(i32, i32, i64) #1

declare dso_local i64 @mlx4_update_qp(i32, i32, i32, %struct.mlx4_update_qp_params*) #1

declare dso_local i32 @mlx4_unregister_mac(i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
