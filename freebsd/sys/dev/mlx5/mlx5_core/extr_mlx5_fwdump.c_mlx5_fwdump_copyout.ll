; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fwdump.c_mlx5_fwdump_copyout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fwdump.c_mlx5_fwdump_copyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32, i32, i32, i32*, %struct.mlx5_crspace_regmap*, i32 }
%struct.mlx5_crspace_regmap = type { i64, i64 }
%struct.mlx5_fwdump_get = type { i32, i32, %struct.mlx5_fwdump_reg* }
%struct.mlx5_fwdump_reg = type { i32, i64 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_fwdump_get*)* @mlx5_fwdump_copyout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fwdump_copyout(%struct.mlx5_core_dev* %0, %struct.mlx5_fwdump_get* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_fwdump_get*, align 8
  %6 = alloca %struct.mlx5_crspace_regmap*, align 8
  %7 = alloca %struct.mlx5_fwdump_reg, align 8
  %8 = alloca %struct.mlx5_fwdump_reg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_fwdump_get* %1, %struct.mlx5_fwdump_get** %5, align 8
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %12, i32 0, i32 2
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %20, i32 0, i32 2
  %22 = call i32 @mtx_unlock(i32* %21)
  %23 = load i32, i32* @ENOENT, align 4
  store i32 %23, i32* %3, align 4
  br label %131

24:                                               ; preds = %2
  %25 = load %struct.mlx5_fwdump_get*, %struct.mlx5_fwdump_get** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5_fwdump_get, %struct.mlx5_fwdump_get* %25, i32 0, i32 2
  %27 = load %struct.mlx5_fwdump_reg*, %struct.mlx5_fwdump_reg** %26, align 8
  %28 = icmp eq %struct.mlx5_fwdump_reg* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mlx5_fwdump_get*, %struct.mlx5_fwdump_get** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5_fwdump_get, %struct.mlx5_fwdump_get* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %35, i32 0, i32 2
  %37 = call i32 @mtx_unlock(i32* %36)
  store i32 0, i32* %3, align 4
  br label %131

38:                                               ; preds = %24
  %39 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %45 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %44, i32 0, i32 2
  %46 = call i32 @mtx_unlock(i32* %45)
  %47 = load i32, i32* @ENOENT, align 4
  store i32 %47, i32* %3, align 4
  br label %131

48:                                               ; preds = %38
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %50 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %52 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %51, i32 0, i32 2
  %53 = call i32 @mtx_unlock(i32* %52)
  %54 = load %struct.mlx5_fwdump_get*, %struct.mlx5_fwdump_get** %5, align 8
  %55 = getelementptr inbounds %struct.mlx5_fwdump_get, %struct.mlx5_fwdump_get* %54, i32 0, i32 2
  %56 = load %struct.mlx5_fwdump_reg*, %struct.mlx5_fwdump_reg** %55, align 8
  store %struct.mlx5_fwdump_reg* %56, %struct.mlx5_fwdump_reg** %8, align 8
  store i32 0, i32* %9, align 4
  %57 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %58 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %57, i32 0, i32 4
  %59 = load %struct.mlx5_crspace_regmap*, %struct.mlx5_crspace_regmap** %58, align 8
  store %struct.mlx5_crspace_regmap* %59, %struct.mlx5_crspace_regmap** %6, align 8
  br label %60

60:                                               ; preds = %112, %48
  %61 = load %struct.mlx5_crspace_regmap*, %struct.mlx5_crspace_regmap** %6, align 8
  %62 = getelementptr inbounds %struct.mlx5_crspace_regmap, %struct.mlx5_crspace_regmap* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %115

65:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %108, %65
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.mlx5_crspace_regmap*, %struct.mlx5_crspace_regmap** %6, align 8
  %70 = getelementptr inbounds %struct.mlx5_crspace_regmap, %struct.mlx5_crspace_regmap* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %73, label %111

73:                                               ; preds = %66
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.mlx5_fwdump_get*, %struct.mlx5_fwdump_get** %5, align 8
  %76 = getelementptr inbounds %struct.mlx5_fwdump_get, %struct.mlx5_fwdump_get* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sge i32 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %116

80:                                               ; preds = %73
  %81 = load %struct.mlx5_crspace_regmap*, %struct.mlx5_crspace_regmap** %6, align 8
  %82 = getelementptr inbounds %struct.mlx5_crspace_regmap, %struct.mlx5_crspace_regmap* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = mul nsw i32 %84, 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %83, %86
  %88 = getelementptr inbounds %struct.mlx5_fwdump_reg, %struct.mlx5_fwdump_reg* %7, i32 0, i32 1
  store i64 %87, i64* %88, align 8
  %89 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %90 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.mlx5_fwdump_reg, %struct.mlx5_fwdump_reg* %7, i32 0, i32 0
  store i32 %95, i32* %96, align 8
  %97 = load %struct.mlx5_fwdump_reg*, %struct.mlx5_fwdump_reg** %8, align 8
  %98 = call i32 @copyout(%struct.mlx5_fwdump_reg* %7, %struct.mlx5_fwdump_reg* %97, i32 16)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %80
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %3, align 4
  br label %131

103:                                              ; preds = %80
  %104 = load %struct.mlx5_fwdump_reg*, %struct.mlx5_fwdump_reg** %8, align 8
  %105 = getelementptr inbounds %struct.mlx5_fwdump_reg, %struct.mlx5_fwdump_reg* %104, i32 1
  store %struct.mlx5_fwdump_reg* %105, %struct.mlx5_fwdump_reg** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %66

111:                                              ; preds = %66
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.mlx5_crspace_regmap*, %struct.mlx5_crspace_regmap** %6, align 8
  %114 = getelementptr inbounds %struct.mlx5_crspace_regmap, %struct.mlx5_crspace_regmap* %113, i32 1
  store %struct.mlx5_crspace_regmap* %114, %struct.mlx5_crspace_regmap** %6, align 8
  br label %60

115:                                              ; preds = %60
  br label %116

116:                                              ; preds = %115, %79
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.mlx5_fwdump_get*, %struct.mlx5_fwdump_get** %5, align 8
  %119 = getelementptr inbounds %struct.mlx5_fwdump_get, %struct.mlx5_fwdump_get* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %121 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %120, i32 0, i32 2
  %122 = call i32 @mtx_lock(i32* %121)
  %123 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %124 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %123, i32 0, i32 1
  store i32 0, i32* %124, align 4
  %125 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %126 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %125, i32 0, i32 1
  %127 = call i32 @wakeup(i32* %126)
  %128 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %129 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %128, i32 0, i32 2
  %130 = call i32 @mtx_unlock(i32* %129)
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %116, %101, %43, %29, %19
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @copyout(%struct.mlx5_fwdump_reg*, %struct.mlx5_fwdump_reg*, i32) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
