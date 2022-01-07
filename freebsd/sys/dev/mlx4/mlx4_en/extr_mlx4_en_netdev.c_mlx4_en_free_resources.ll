; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_free_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_free_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32, i32, i32*, i64*, %struct.TYPE_4__*, i64*, i64*, i64*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_free_resources(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca %struct.mlx4_en_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %57, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %7 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %60

10:                                               ; preds = %4
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %11, i32 0, i32 8
  %13 = load i64*, i64** %12, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %16, i32 0, i32 8
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %15
  %25 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %26 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %26, i32 0, i32 8
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = call i32 @mlx4_en_destroy_tx_ring(%struct.mlx4_en_priv* %25, i64* %31)
  br label %33

33:                                               ; preds = %24, %15, %10
  %34 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %34, i32 0, i32 7
  %36 = load i64*, i64** %35, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %56

38:                                               ; preds = %33
  %39 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %39, i32 0, i32 7
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %38
  %48 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %49 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %50 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %49, i32 0, i32 7
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = call i32 @mlx4_en_destroy_cq(%struct.mlx4_en_priv* %48, i64* %54)
  br label %56

56:                                               ; preds = %47, %38, %33
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %4

60:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %109, %60
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %64 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %112

67:                                               ; preds = %61
  %68 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %69 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %68, i32 0, i32 6
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %67
  %77 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %78 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %79 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %78, i32 0, i32 6
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %85 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %84, i32 0, i32 5
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @mlx4_en_destroy_rx_ring(%struct.mlx4_en_priv* %77, i64* %83, i32 %88)
  br label %90

90:                                               ; preds = %76, %67
  %91 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %92 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %91, i32 0, i32 4
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %90
  %100 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %101 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %102 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %101, i32 0, i32 4
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = call i32 @mlx4_en_destroy_cq(%struct.mlx4_en_priv* %100, i64* %106)
  br label %108

108:                                              ; preds = %99, %90
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %3, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %3, align 4
  br label %61

112:                                              ; preds = %61
  %113 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %114 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %119 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %118, i32 0, i32 2
  %120 = call i32 @sysctl_ctx_free(i32* %119)
  br label %121

121:                                              ; preds = %117, %112
  ret void
}

declare dso_local i32 @mlx4_en_destroy_tx_ring(%struct.mlx4_en_priv*, i64*) #1

declare dso_local i32 @mlx4_en_destroy_cq(%struct.mlx4_en_priv*, i64*) #1

declare dso_local i32 @mlx4_en_destroy_rx_ring(%struct.mlx4_en_priv*, i64*, i32) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
