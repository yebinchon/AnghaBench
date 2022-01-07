; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_qp.c_to_ib_ah_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_qp.c_to_ib_ah_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32, %struct.mlx4_dev* }
%struct.mlx4_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ib_ah_attr = type { i32, i32, i32, i32, %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mlx4_qp_path = type { i32, i32, i32, i32, i32, i32, i64, i32 }

@IB_LINK_LAYER_ETHERNET = common dso_local global i64 0, align 8
@IB_AH_GRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_dev*, %struct.ib_ah_attr*, %struct.mlx4_qp_path*)* @to_ib_ah_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @to_ib_ah_attr(%struct.mlx4_ib_dev* %0, %struct.ib_ah_attr* %1, %struct.mlx4_qp_path* %2) #0 {
  %4 = alloca %struct.mlx4_ib_dev*, align 8
  %5 = alloca %struct.ib_ah_attr*, align 8
  %6 = alloca %struct.mlx4_qp_path*, align 8
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %4, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %5, align 8
  store %struct.mlx4_qp_path* %2, %struct.mlx4_qp_path** %6, align 8
  %9 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %10 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %9, i32 0, i32 1
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  store %struct.mlx4_dev* %11, %struct.mlx4_dev** %7, align 8
  %12 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %13 = call i32 @memset(%struct.ib_ah_attr* %12, i32 0, i32 56)
  %14 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %15 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 64
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 2, i32 1
  %21 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %22 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %24 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %3
  %28 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %29 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %33 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27, %3
  br label %155

38:                                               ; preds = %27
  %39 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %40 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %39, i32 0, i32 0
  %41 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %42 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = call i64 @rdma_port_get_link_layer(i32* %40, i64 %44)
  %46 = load i64, i64* @IB_LINK_LAYER_ETHERNET, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %38
  %52 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %53 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = ashr i32 %54, 3
  %56 = and i32 %55, 7
  %57 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %58 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, 4
  %61 = shl i32 %60, 1
  %62 = or i32 %56, %61
  %63 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %64 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %73

65:                                               ; preds = %38
  %66 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %67 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = ashr i32 %68, 2
  %70 = and i32 %69, 15
  %71 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %72 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %65, %51
  %74 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %75 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @be16_to_cpu(i32 %76)
  %78 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %79 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 8
  %80 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %81 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 127
  %84 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %85 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %87 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %73
  %91 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %92 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %93, 5
  br label %96

95:                                               ; preds = %73
  br label %96

96:                                               ; preds = %95, %90
  %97 = phi i64 [ %94, %90 ], [ 0, %95 ]
  %98 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %99 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %98, i32 0, i32 5
  store i64 %97, i64* %99, align 8
  %100 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %101 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 128
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* @IB_AH_GRH, align 4
  br label %108

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i32 [ %106, %105 ], [ 0, %107 ]
  %110 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %111 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %113 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %155

116:                                              ; preds = %108
  %117 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %118 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %121 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 4
  store i32 %119, i32* %122, align 8
  %123 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %124 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %127 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 3
  store i32 %125, i32* %128, align 4
  %129 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %130 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @be32_to_cpu(i32 %131)
  %133 = ashr i32 %132, 20
  %134 = and i32 %133, 255
  %135 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %136 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  %138 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %139 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @be32_to_cpu(i32 %140)
  %142 = and i32 %141, 1048575
  %143 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %144 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 4
  %146 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %147 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %152 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @memcpy(i32 %150, i32 %153, i32 4)
  br label %155

155:                                              ; preds = %37, %116, %108
  ret void
}

declare dso_local i32 @memset(%struct.ib_ah_attr*, i32, i32) #1

declare dso_local i64 @rdma_port_get_link_layer(i32*, i64) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
