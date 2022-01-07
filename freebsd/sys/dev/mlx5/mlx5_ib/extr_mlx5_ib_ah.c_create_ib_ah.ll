; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_ah.c_create_ib_ah.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_ah.c_create_ib_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_ah = type { %struct.ib_ah, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_ah_attr = type { i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@IB_AH_GRH = common dso_local global i32 0, align 4
@IB_LINK_LAYER_ETHERNET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_ah* (%struct.mlx5_ib_dev*, %struct.mlx5_ib_ah*, %struct.ib_ah_attr*, i32)* @create_ib_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_ah* @create_ib_ah(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_ah* %1, %struct.ib_ah_attr* %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.mlx5_ib_ah*, align 8
  %7 = alloca %struct.ib_ah_attr*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store %struct.mlx5_ib_ah* %1, %struct.mlx5_ib_ah** %6, align 8
  store %struct.ib_ah_attr* %2, %struct.ib_ah_attr** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %10 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @IB_AH_GRH, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %4
  %16 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %6, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %21 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  %23 = call i32 @memcpy(i32 %19, i32* %22, i32 16)
  %24 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %25 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, 1073741824
  %29 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %30 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 20
  %34 = or i32 %28, %33
  %35 = call i32 @cpu_to_be32(i32 %34)
  %36 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %6, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 7
  store i32 %35, i32* %38, align 4
  %39 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %40 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %6, align 8
  %44 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 6
  store i32 %42, i32* %45, align 4
  %46 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %47 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %6, align 8
  %51 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 5
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %15, %4
  %54 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %55 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 4
  %58 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %6, align 8
  %59 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @IB_LINK_LAYER_ETHERNET, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %95

64:                                               ; preds = %53
  %65 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %6, align 8
  %66 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %70 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %69, i32 0, i32 7
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @memcpy(i32 %68, i32* %71, i32 8)
  %73 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %74 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %75 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %78 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @mlx5_get_roce_udp_sport(%struct.mlx5_ib_dev* %73, i32 %76, i32 %80)
  %82 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %6, align 8
  %83 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  store i32 %81, i32* %84, align 4
  %85 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %86 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, 7
  %89 = shl i32 %88, 1
  %90 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %6, align 8
  %91 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %89
  store i32 %94, i32* %92, align 4
  br label %119

95:                                               ; preds = %53
  %96 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %97 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @cpu_to_be16(i32 %98)
  %100 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %6, align 8
  %101 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  store i32 %99, i32* %102, align 4
  %103 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %104 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 127
  %107 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %6, align 8
  %108 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  %110 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %111 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, 15
  %114 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %6, align 8
  %115 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %113
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %95, %64
  %120 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %6, align 8
  %121 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %120, i32 0, i32 0
  ret %struct.ib_ah* %121
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx5_get_roce_udp_sport(%struct.mlx5_ib_dev*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
