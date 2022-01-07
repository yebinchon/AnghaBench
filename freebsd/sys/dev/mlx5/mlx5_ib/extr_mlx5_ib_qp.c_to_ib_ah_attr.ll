; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_to_ib_ah_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_to_ib_ah_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.ib_ah_attr = type { i64, i32, i32, i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_qp_path = type { i64, i32, i32, i32, i32, i32, i32, i64, i32 }

@num_ports = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.ib_ah_attr*, %struct.mlx5_qp_path*)* @to_ib_ah_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @to_ib_ah_attr(%struct.mlx5_ib_dev* %0, %struct.ib_ah_attr* %1, %struct.mlx5_qp_path* %2) #0 {
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.ib_ah_attr*, align 8
  %6 = alloca %struct.mlx5_qp_path*, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %5, align 8
  store %struct.mlx5_qp_path* %2, %struct.mlx5_qp_path** %6, align 8
  %8 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %8, i32 0, i32 0
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  store %struct.mlx5_core_dev* %10, %struct.mlx5_core_dev** %7, align 8
  %11 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %12 = call i32 @memset(%struct.ib_ah_attr* %11, i32 0, i32 56)
  %13 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %17 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %19 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %3
  %23 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %24 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %27 = load i32, i32* @num_ports, align 4
  %28 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %26, i32 %27)
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22, %3
  br label %119

31:                                               ; preds = %22
  %32 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %33 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, 15
  %36 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %37 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %39 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @be16_to_cpu(i32 %40)
  %42 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %43 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %45 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 127
  %48 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %49 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %51 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %50, i32 0, i32 7
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %31
  %55 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %56 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, 5
  br label %60

59:                                               ; preds = %31
  br label %60

60:                                               ; preds = %59, %54
  %61 = phi i64 [ %58, %54 ], [ 0, %59 ]
  %62 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %63 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %62, i32 0, i32 5
  store i64 %61, i64* %63, align 8
  %64 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %65 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 128
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* @IB_AH_GRH, align 4
  br label %72

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  %74 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %75 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %77 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %119

80:                                               ; preds = %72
  %81 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %82 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %85 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  store i32 %83, i32* %86, align 4
  %87 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %88 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %91 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  store i32 %89, i32* %92, align 4
  %93 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %94 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @be32_to_cpu(i32 %95)
  %97 = ashr i32 %96, 20
  %98 = and i32 %97, 255
  %99 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %100 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 4
  %102 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %103 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @be32_to_cpu(i32 %104)
  %106 = and i32 %105, 1048575
  %107 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %108 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  %110 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %111 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %116 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @memcpy(i32 %114, i32 %117, i32 4)
  br label %119

119:                                              ; preds = %30, %80, %72
  ret void
}

declare dso_local i32 @memset(%struct.ib_ah_attr*, i32, i32) #1

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
