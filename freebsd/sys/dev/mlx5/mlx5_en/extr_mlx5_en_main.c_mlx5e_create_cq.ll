; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_create_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_cq_param = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.mlx5e_cq = type { %struct.mlx5e_priv*, i32, %struct.TYPE_6__, %struct.mlx5_core_cq }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }
%struct.mlx5_core_cq = type { i32, i32, i32, i32*, i32, i32*, i64*, i64* }
%struct.mlx5_cqe64 = type { i32 }

@mlx5e_cq_error_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5e_cq_param*, %struct.mlx5e_cq*, i32*, i32)* @mlx5e_create_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_create_cq(%struct.mlx5e_priv* %0, %struct.mlx5e_cq_param* %1, %struct.mlx5e_cq* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.mlx5e_cq_param*, align 8
  %9 = alloca %struct.mlx5e_cq*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5_core_dev*, align 8
  %13 = alloca %struct.mlx5_core_cq*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.mlx5_cqe64*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %7, align 8
  store %struct.mlx5e_cq_param* %1, %struct.mlx5e_cq_param** %8, align 8
  store %struct.mlx5e_cq* %2, %struct.mlx5e_cq** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %20 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %19, i32 0, i32 1
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %20, align 8
  store %struct.mlx5_core_dev* %21, %struct.mlx5_core_dev** %12, align 8
  %22 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %9, align 8
  %23 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %22, i32 0, i32 3
  store %struct.mlx5_core_cq* %23, %struct.mlx5_core_cq** %13, align 8
  %24 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %8, align 8
  %25 = getelementptr inbounds %struct.mlx5e_cq_param, %struct.mlx5e_cq_param* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %8, align 8
  %28 = getelementptr inbounds %struct.mlx5e_cq_param, %struct.mlx5e_cq_param* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @mlx5_vector2eqn(%struct.mlx5_core_dev* %30, i32 %31, i32* %14, i32* %15)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %6, align 4
  br label %113

37:                                               ; preds = %5
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  %39 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %8, align 8
  %40 = getelementptr inbounds %struct.mlx5e_cq_param, %struct.mlx5e_cq_param* %39, i32 0, i32 1
  %41 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %8, align 8
  %42 = getelementptr inbounds %struct.mlx5e_cq_param, %struct.mlx5e_cq_param* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %9, align 8
  %45 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %44, i32 0, i32 1
  %46 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %9, align 8
  %47 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %46, i32 0, i32 2
  %48 = call i32 @mlx5_cqwq_create(%struct.mlx5_core_dev* %38, %struct.TYPE_5__* %40, i32 %43, i32* %45, %struct.TYPE_6__* %47)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = load i32, i32* %16, align 4
  store i32 %52, i32* %6, align 4
  br label %113

53:                                               ; preds = %37
  %54 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %13, align 8
  %55 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %54, i32 0, i32 0
  store i32 64, i32* %55, align 8
  %56 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %9, align 8
  %57 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %13, align 8
  %62 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %61, i32 0, i32 7
  store i64* %60, i64** %62, align 8
  %63 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %9, align 8
  %64 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %13, align 8
  %70 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %69, i32 0, i32 6
  store i64* %68, i64** %70, align 8
  %71 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %13, align 8
  %72 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %71, i32 0, i32 7
  %73 = load i64*, i64** %72, align 8
  store i64 0, i64* %73, align 8
  %74 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %13, align 8
  %75 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %74, i32 0, i32 6
  %76 = load i64*, i64** %75, align 8
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %13, align 8
  %79 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32*, i32** %10, align 8
  %81 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %13, align 8
  %82 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %81, i32 0, i32 5
  store i32* %80, i32** %82, align 8
  %83 = load i32, i32* @mlx5e_cq_error_event, align 4
  %84 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %13, align 8
  %85 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %15, align 4
  %87 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %13, align 8
  %88 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %90 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %89, i32 0, i32 0
  %91 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %13, align 8
  %92 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %91, i32 0, i32 3
  store i32* %90, i32** %92, align 8
  store i64 0, i64* %17, align 8
  br label %93

93:                                               ; preds = %106, %53
  %94 = load i64, i64* %17, align 8
  %95 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %9, align 8
  %96 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %95, i32 0, i32 1
  %97 = call i64 @mlx5_cqwq_get_size(i32* %96)
  %98 = icmp slt i64 %94, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %93
  %100 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %9, align 8
  %101 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %100, i32 0, i32 1
  %102 = load i64, i64* %17, align 8
  %103 = call %struct.mlx5_cqe64* @mlx5_cqwq_get_wqe(i32* %101, i64 %102)
  store %struct.mlx5_cqe64* %103, %struct.mlx5_cqe64** %18, align 8
  %104 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %18, align 8
  %105 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %104, i32 0, i32 0
  store i32 241, i32* %105, align 4
  br label %106

106:                                              ; preds = %99
  %107 = load i64, i64* %17, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %17, align 8
  br label %93

109:                                              ; preds = %93
  %110 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %111 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %9, align 8
  %112 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %111, i32 0, i32 0
  store %struct.mlx5e_priv* %110, %struct.mlx5e_priv** %112, align 8
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %109, %51, %35
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @mlx5_vector2eqn(%struct.mlx5_core_dev*, i32, i32*, i32*) #1

declare dso_local i32 @mlx5_cqwq_create(%struct.mlx5_core_dev*, %struct.TYPE_5__*, i32, i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @mlx5_cqwq_get_size(i32*) #1

declare dso_local %struct.mlx5_cqe64* @mlx5_cqwq_get_wqe(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
