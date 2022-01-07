; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_ah.c_mlx5_ib_query_ah.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_ah.c_mlx5_ib_query_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.ib_ah_attr = type { i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.mlx5_ib_ah = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@IB_AH_GRH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_query_ah(%struct.ib_ah* %0, %struct.ib_ah_attr* %1) #0 {
  %3 = alloca %struct.ib_ah*, align 8
  %4 = alloca %struct.ib_ah_attr*, align 8
  %5 = alloca %struct.mlx5_ib_ah*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_ah* %0, %struct.ib_ah** %3, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %4, align 8
  %7 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %8 = call %struct.mlx5_ib_ah* @to_mah(%struct.ib_ah* %7)
  store %struct.mlx5_ib_ah* %8, %struct.mlx5_ib_ah** %5, align 8
  %9 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %10 = call i32 @memset(%struct.ib_ah_attr* %9, i32 0, i32 36)
  %11 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @be32_to_cpu(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 1073741824
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %2
  %20 = load i32, i32* @IB_AH_GRH, align 4
  %21 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %22 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 20
  %25 = and i32 %24, 255
  %26 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %27 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 1048575
  %31 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %32 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %35 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  %37 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i32* %36, i32 %40, i32 16)
  %42 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %47 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 4
  %49 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %50 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %54 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %19, %2
  %57 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %58 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @be16_to_cpu(i32 %60)
  %62 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %63 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %65 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 4
  %69 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %70 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %72 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 15
  %76 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %77 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  ret i32 0
}

declare dso_local %struct.mlx5_ib_ah* @to_mah(%struct.ib_ah*) #1

declare dso_local i32 @memset(%struct.ib_ah_attr*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
