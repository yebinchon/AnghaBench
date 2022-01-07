; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_destroy_flow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_destroy_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_flow = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_flow = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_flow*)* @mlx4_ib_destroy_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_destroy_flow(%struct.ib_flow* %0) #0 {
  %2 = alloca %struct.ib_flow*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca %struct.mlx4_ib_flow*, align 8
  store %struct.ib_flow* %0, %struct.ib_flow** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.ib_flow*, %struct.ib_flow** %2, align 8
  %9 = getelementptr inbounds %struct.ib_flow, %struct.ib_flow* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mlx4_ib_dev* @to_mdev(i32 %12)
  store %struct.mlx4_ib_dev* %13, %struct.mlx4_ib_dev** %6, align 8
  %14 = load %struct.ib_flow*, %struct.ib_flow** %2, align 8
  %15 = call %struct.mlx4_ib_flow* @to_mflow(%struct.ib_flow* %14)
  store %struct.mlx4_ib_flow* %15, %struct.mlx4_ib_flow** %7, align 8
  br label %16

16:                                               ; preds = %80, %1
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %7, align 8
  %19 = getelementptr inbounds %struct.mlx4_ib_flow, %struct.mlx4_ib_flow* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %20)
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %7, align 8
  %25 = getelementptr inbounds %struct.mlx4_ib_flow, %struct.mlx4_ib_flow* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %23, %16
  %34 = phi i1 [ false, %16 ], [ %32, %23 ]
  br i1 %34, label %35, label %83

35:                                               ; preds = %33
  %36 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %37 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %7, align 8
  %40 = getelementptr inbounds %struct.mlx4_ib_flow, %struct.mlx4_ib_flow* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @__mlx4_ib_destroy_flow(i32 %38, i64 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load i32, i32* %3, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %35
  %53 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %7, align 8
  %54 = getelementptr inbounds %struct.mlx4_ib_flow, %struct.mlx4_ib_flow* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %52
  %63 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %64 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %7, align 8
  %67 = getelementptr inbounds %struct.mlx4_ib_flow, %struct.mlx4_ib_flow* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @__mlx4_ib_destroy_flow(i32 %65, i64 %73)
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %62
  %78 = load i32, i32* %3, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %62
  br label %80

80:                                               ; preds = %79, %52
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %16

83:                                               ; preds = %33
  %84 = load %struct.mlx4_ib_flow*, %struct.mlx4_ib_flow** %7, align 8
  %85 = call i32 @kfree(%struct.mlx4_ib_flow* %84)
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_flow* @to_mflow(%struct.ib_flow*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @__mlx4_ib_destroy_flow(i32, i64) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
