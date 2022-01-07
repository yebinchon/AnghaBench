; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_drain_sq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_drain_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_sq = type { i64, i64, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*)* }
%struct.TYPE_5__ = type { i32, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i64 }

@MLX5E_CEV_STATE_HOLD_NOPS = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@MLX5_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i64 0, align 8
@MLX5_SQC_STATE_RDY = common dso_local global i32 0, align 4
@MLX5_SQC_STATE_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"mlx5e_modify_sq() from RDY to ERR failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_drain_sq(%struct.mlx5e_sq* %0) #0 {
  %2 = alloca %struct.mlx5e_sq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5e_sq* %0, %struct.mlx5e_sq** %2, align 8
  %5 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %5, i32 0, i32 5
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  store %struct.mlx5_core_dev* %9, %struct.mlx5_core_dev** %4, align 8
  %10 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @READ_ONCE(i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %137

16:                                               ; preds = %1
  %17 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %18 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @WRITE_ONCE(i32 %19, i32 0)
  %21 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %22 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %21, i32 0, i32 2
  %23 = call i32 @mtx_lock(i32* %22)
  %24 = load i32, i32* @MLX5E_CEV_STATE_HOLD_NOPS, align 4
  %25 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %26 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %28 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %27, i32 0, i32 6
  %29 = call i32 @callout_stop(i32* %28)
  %30 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %31 = call i32 @mlx5e_sq_send_nops_locked(%struct.mlx5e_sq* %30, i32 1)
  %32 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %33 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %32, i32 0, i32 2
  %34 = call i32 @mtx_unlock(i32* %33)
  %35 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %36 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %35, i32 0, i32 2
  %37 = call i32 @mtx_lock(i32* %36)
  br label %38

38:                                               ; preds = %63, %16
  %39 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %40 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %43 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %38
  %47 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %48 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %47, i32 0, i32 5
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @IFM_ACTIVE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %57 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 8
  %60 = icmp ne i64 %58, %59
  br label %61

61:                                               ; preds = %55, %46, %38
  %62 = phi i1 [ false, %46 ], [ false, %38 ], [ %60, %55 ]
  br i1 %62, label %63, label %80

63:                                               ; preds = %61
  %64 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %65 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %64, i32 0, i32 2
  %66 = call i32 @mtx_unlock(i32* %65)
  %67 = call i32 @msleep(i32 1)
  %68 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %69 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %71, align 8
  %73 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %74 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = call i32 %72(%struct.TYPE_7__* %75)
  %77 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %78 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %77, i32 0, i32 2
  %79 = call i32 @mtx_lock(i32* %78)
  br label %38

80:                                               ; preds = %61
  %81 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %82 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %81, i32 0, i32 2
  %83 = call i32 @mtx_unlock(i32* %82)
  %84 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %85 = load i32, i32* @MLX5_SQC_STATE_RDY, align 4
  %86 = load i32, i32* @MLX5_SQC_STATE_ERR, align 4
  %87 = call i32 @mlx5e_modify_sq(%struct.mlx5e_sq* %84, i32 %85, i32 %86)
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %3, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %80
  %91 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %92 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @mlx5_en_err(i32 %93, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %80
  %97 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %98 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %97, i32 0, i32 2
  %99 = call i32 @mtx_lock(i32* %98)
  br label %100

100:                                              ; preds = %116, %96
  %101 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %102 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %105 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %103, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %100
  %109 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %110 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 8
  %113 = icmp ne i64 %111, %112
  br label %114

114:                                              ; preds = %108, %100
  %115 = phi i1 [ false, %100 ], [ %113, %108 ]
  br i1 %115, label %116, label %133

116:                                              ; preds = %114
  %117 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %118 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %117, i32 0, i32 2
  %119 = call i32 @mtx_unlock(i32* %118)
  %120 = call i32 @msleep(i32 1)
  %121 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %122 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %124, align 8
  %126 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %127 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = call i32 %125(%struct.TYPE_7__* %128)
  %130 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %131 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %130, i32 0, i32 2
  %132 = call i32 @mtx_lock(i32* %131)
  br label %100

133:                                              ; preds = %114
  %134 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %135 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %134, i32 0, i32 2
  %136 = call i32 @mtx_unlock(i32* %135)
  br label %137

137:                                              ; preds = %133, %15
  ret void
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @mlx5e_sq_send_nops_locked(%struct.mlx5e_sq*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mlx5e_modify_sq(%struct.mlx5e_sq*, i32, i32) #1

declare dso_local i32 @mlx5_en_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
