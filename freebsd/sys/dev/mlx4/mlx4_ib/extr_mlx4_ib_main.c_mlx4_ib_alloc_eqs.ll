; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_alloc_eqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_alloc_eqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mlx4_ib_dev = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*, %struct.mlx4_ib_dev*)* @mlx4_ib_alloc_eqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_ib_alloc_eqs(%struct.mlx4_dev* %0, %struct.mlx4_ib_dev* %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_ib_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store %struct.mlx4_ib_dev* %1, %struct.mlx4_ib_dev** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32* @kcalloc(i32 %12, i32 4, i32 %13)
  %15 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %16 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %15, i32 0, i32 0
  store i32* %14, i32** %16, align 8
  %17 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %107

22:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %81, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %26 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sle i32 %24, %28
  br i1 %29, label %30, label %84

30:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %75, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @mlx4_get_eqs_per_port(%struct.mlx4_dev* %33, i32 %34)
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %80

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @mlx4_is_eq_shared(%struct.mlx4_dev* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %75

46:                                               ; preds = %40, %37
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %49 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  %54 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %57 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = call i32 @mlx4_assign_eq(%struct.mlx4_dev* %54, i32 %55, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %46
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %74

67:                                               ; preds = %46
  %68 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %69 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 -1, i32* %73, align 4
  br label %74

74:                                               ; preds = %67, %64
  br label %75

75:                                               ; preds = %74, %45
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %31

80:                                               ; preds = %31
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %23

84:                                               ; preds = %23
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %94, %84
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %89 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %96 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  store i32 -1, i32* %101, align 4
  br label %86

102:                                              ; preds = %86
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %105 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  br label %107

107:                                              ; preds = %102, %21
  ret void
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mlx4_get_eqs_per_port(%struct.mlx4_dev*, i32) #1

declare dso_local i64 @mlx4_is_eq_shared(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_assign_eq(%struct.mlx4_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
