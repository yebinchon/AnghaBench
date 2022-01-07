; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_fill_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_fill_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, %struct.mlx4_en_rx_ring**, %struct.TYPE_2__* }
%struct.mlx4_en_rx_ring = type { i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Failed to allocate enough rx buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Only %d buffers allocated reducing ring size to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*)* @mlx4_en_fill_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_fill_rx_buffers(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_rx_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %74, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %77

17:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %70, %17
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %21 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %73

24:                                               ; preds = %18
  %25 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %25, i32 0, i32 1
  %27 = load %struct.mlx4_en_rx_ring**, %struct.mlx4_en_rx_ring*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %27, i64 %29
  %31 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %30, align 8
  store %struct.mlx4_en_rx_ring* %31, %struct.mlx4_en_rx_ring** %4, align 8
  %32 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %33 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %34 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @mlx4_en_prepare_rx_desc(%struct.mlx4_en_priv* %32, %struct.mlx4_en_rx_ring* %33, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %24
  %41 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %42 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %47 = call i32 @en_err(%struct.mlx4_en_priv* %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %123

50:                                               ; preds = %40
  %51 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @rounddown_pow_of_two(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %56 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %57 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @en_warn(%struct.mlx4_en_priv* %55, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59)
  br label %78

61:                                               ; preds = %24
  %62 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %63 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %61
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %18

73:                                               ; preds = %18
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %9

77:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %123

78:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %119, %78
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %82 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %122

85:                                               ; preds = %79
  %86 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %87 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %86, i32 0, i32 1
  %88 = load %struct.mlx4_en_rx_ring**, %struct.mlx4_en_rx_ring*** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %88, i64 %90
  %92 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %91, align 8
  store %struct.mlx4_en_rx_ring* %92, %struct.mlx4_en_rx_ring** %4, align 8
  br label %93

93:                                               ; preds = %99, %85
  %94 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %95 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %93
  %100 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %101 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %101, align 8
  %104 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %105 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %105, align 8
  %108 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %109 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %110 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %113 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %111, %115
  %117 = call i32 @mlx4_en_free_buf(%struct.mlx4_en_rx_ring* %108, i64 %116)
  br label %93

118:                                              ; preds = %93
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  br label %79

122:                                              ; preds = %79
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %77, %45
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @mlx4_en_prepare_rx_desc(%struct.mlx4_en_priv*, %struct.mlx4_en_rx_ring*, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @rounddown_pow_of_two(i32) #1

declare dso_local i32 @en_warn(%struct.mlx4_en_priv*, i8*, i32, i32) #1

declare dso_local i32 @mlx4_en_free_buf(%struct.mlx4_en_rx_ring*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
