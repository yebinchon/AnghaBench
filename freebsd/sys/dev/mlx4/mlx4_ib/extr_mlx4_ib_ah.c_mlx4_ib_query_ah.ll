; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_ah.c_mlx4_ib_query_ah.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_ah.c_mlx4_ib_query_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.ib_ah_attr = type { i32, i32, i32, %struct.TYPE_8__, i32, i64, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.mlx4_ib_ah = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@IB_LINK_LAYER_ETHERNET = common dso_local global i32 0, align 4
@IB_LINK_LAYER_INFINIBAND = common dso_local global i32 0, align 4
@MLX4_STAT_RATE_OFFSET = common dso_local global i64 0, align 8
@IB_AH_GRH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_query_ah(%struct.ib_ah* %0, %struct.ib_ah_attr* %1) #0 {
  %3 = alloca %struct.ib_ah*, align 8
  %4 = alloca %struct.ib_ah_attr*, align 8
  %5 = alloca %struct.mlx4_ib_ah*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_ah* %0, %struct.ib_ah** %3, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %4, align 8
  %7 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %8 = call %struct.mlx4_ib_ah* @to_mah(%struct.ib_ah* %7)
  store %struct.mlx4_ib_ah* %8, %struct.mlx4_ib_ah** %5, align 8
  %9 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %10 = call i32 @memset(%struct.ib_ah_attr* %9, i32 0, i32 56)
  %11 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %12 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @be32_to_cpu(i32 %15)
  %17 = ashr i32 %16, 24
  %18 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %19 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %21 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %24 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @rdma_port_get_link_layer(i32 %22, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @IB_LINK_LAYER_ETHERNET, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %32 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @be32_to_cpu(i32 %35)
  %37 = ashr i32 %36, 29
  %38 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %39 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %50

40:                                               ; preds = %2
  %41 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %42 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @be32_to_cpu(i32 %45)
  %47 = ashr i32 %46, 28
  %48 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %49 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %40, %30
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @IB_LINK_LAYER_INFINIBAND, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %56 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @be16_to_cpu(i32 %59)
  br label %62

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %54
  %63 = phi i32 [ %60, %54 ], [ 0, %61 ]
  %64 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %65 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %67 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %62
  %73 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %74 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MLX4_STAT_RATE_OFFSET, align 8
  %79 = sub nsw i64 %77, %78
  %80 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %81 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %80, i32 0, i32 5
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %72, %62
  %83 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %84 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, 127
  %89 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %90 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %92 = call i64 @mlx4_ib_ah_grh_present(%struct.mlx4_ib_ah* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %145

94:                                               ; preds = %82
  %95 = load i32, i32* @IB_AH_GRH, align 4
  %96 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %97 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %99 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @be32_to_cpu(i32 %102)
  %104 = ashr i32 %103, 20
  %105 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %106 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 4
  %108 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %109 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @be32_to_cpu(i32 %112)
  %114 = and i32 %113, 1048575
  %115 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %116 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  %118 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %119 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %124 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 4
  store i32 %122, i32* %125, align 4
  %126 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %127 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %132 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 3
  store i32 %130, i32* %133, align 4
  %134 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %135 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %140 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @memcpy(i32 %138, i32 %143, i32 16)
  br label %145

145:                                              ; preds = %94, %82
  ret i32 0
}

declare dso_local %struct.mlx4_ib_ah* @to_mah(%struct.ib_ah*) #1

declare dso_local i32 @memset(%struct.ib_ah_attr*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @rdma_port_get_link_layer(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @mlx4_ib_ah_grh_present(%struct.mlx4_ib_ah*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
