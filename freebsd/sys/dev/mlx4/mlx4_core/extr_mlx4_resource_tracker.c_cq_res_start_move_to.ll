; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_cq_res_start_move_to.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_cq_res_start_move_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.res_cq = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }
%struct.mlx4_priv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlx4_resource_tracker }
%struct.mlx4_resource_tracker = type { i32* }

@RES_CQ = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@RES_CQ_ALLOCATED = common dso_local global i32 0, align 4
@RES_CQ_HW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RES_CQ_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, %struct.res_cq**)* @cq_res_start_move_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cq_res_start_move_to(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, %struct.res_cq** %4) #0 {
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.res_cq**, align 8
  %11 = alloca %struct.mlx4_priv*, align 8
  %12 = alloca %struct.mlx4_resource_tracker*, align 8
  %13 = alloca %struct.res_cq*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.res_cq** %4, %struct.res_cq*** %10, align 8
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %16 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %15)
  store %struct.mlx4_priv* %16, %struct.mlx4_priv** %11, align 8
  %17 = load %struct.mlx4_priv*, %struct.mlx4_priv** %11, align 8
  %18 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.mlx4_resource_tracker* %20, %struct.mlx4_resource_tracker** %12, align 8
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %22 = call i32 @mlx4_tlock(%struct.mlx4_dev* %21)
  %23 = call i32 @spin_lock_irq(i32 %22)
  %24 = load %struct.mlx4_resource_tracker*, %struct.mlx4_resource_tracker** %12, align 8
  %25 = getelementptr inbounds %struct.mlx4_resource_tracker, %struct.mlx4_resource_tracker* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @RES_CQ, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.res_cq* @res_tracker_lookup(i32* %28, i32 %29)
  store %struct.res_cq* %30, %struct.res_cq** %13, align 8
  %31 = load %struct.res_cq*, %struct.res_cq** %13, align 8
  %32 = icmp ne %struct.res_cq* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %5
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %14, align 4
  br label %91

36:                                               ; preds = %5
  %37 = load %struct.res_cq*, %struct.res_cq** %13, align 8
  %38 = getelementptr inbounds %struct.res_cq, %struct.res_cq* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @EPERM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %14, align 4
  br label %90

46:                                               ; preds = %36
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @RES_CQ_ALLOCATED, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load %struct.res_cq*, %struct.res_cq** %13, align 8
  %52 = getelementptr inbounds %struct.res_cq, %struct.res_cq* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @RES_CQ_HW, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %14, align 4
  br label %70

60:                                               ; preds = %50
  %61 = load %struct.res_cq*, %struct.res_cq** %13, align 8
  %62 = getelementptr inbounds %struct.res_cq, %struct.res_cq* %61, i32 0, i32 1
  %63 = call i64 @atomic_read(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %14, align 4
  br label %69

68:                                               ; preds = %60
  store i32 0, i32* %14, align 4
  br label %69

69:                                               ; preds = %68, %65
  br label %70

70:                                               ; preds = %69, %57
  br label %89

71:                                               ; preds = %46
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = load i64, i64* @RES_CQ_HW, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %71
  %77 = load %struct.res_cq*, %struct.res_cq** %13, align 8
  %78 = getelementptr inbounds %struct.res_cq, %struct.res_cq* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @RES_CQ_ALLOCATED, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp ne i64 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %76, %71
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %14, align 4
  br label %88

87:                                               ; preds = %76
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %87, %84
  br label %89

89:                                               ; preds = %88, %70
  br label %90

90:                                               ; preds = %89, %43
  br label %91

91:                                               ; preds = %90, %33
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %118, label %94

94:                                               ; preds = %91
  %95 = load %struct.res_cq*, %struct.res_cq** %13, align 8
  %96 = getelementptr inbounds %struct.res_cq, %struct.res_cq* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = load %struct.res_cq*, %struct.res_cq** %13, align 8
  %101 = getelementptr inbounds %struct.res_cq, %struct.res_cq* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  store i32 %99, i32* %102, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.res_cq*, %struct.res_cq** %13, align 8
  %105 = getelementptr inbounds %struct.res_cq, %struct.res_cq* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @RES_CQ_BUSY, align 4
  %108 = sext i32 %107 to i64
  %109 = load %struct.res_cq*, %struct.res_cq** %13, align 8
  %110 = getelementptr inbounds %struct.res_cq, %struct.res_cq* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  store i64 %108, i64* %111, align 8
  %112 = load %struct.res_cq**, %struct.res_cq*** %10, align 8
  %113 = icmp ne %struct.res_cq** %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %94
  %115 = load %struct.res_cq*, %struct.res_cq** %13, align 8
  %116 = load %struct.res_cq**, %struct.res_cq*** %10, align 8
  store %struct.res_cq* %115, %struct.res_cq** %116, align 8
  br label %117

117:                                              ; preds = %114, %94
  br label %118

118:                                              ; preds = %117, %91
  %119 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %120 = call i32 @mlx4_tlock(%struct.mlx4_dev* %119)
  %121 = call i32 @spin_unlock_irq(i32 %120)
  %122 = load i32, i32* %14, align 4
  ret i32 %122
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @mlx4_tlock(%struct.mlx4_dev*) #1

declare dso_local %struct.res_cq* @res_tracker_lookup(i32*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
