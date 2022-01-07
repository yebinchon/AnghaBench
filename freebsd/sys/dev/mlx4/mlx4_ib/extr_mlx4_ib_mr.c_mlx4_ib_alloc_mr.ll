; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mr.c_mlx4_ib_alloc_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mr.c_mlx4_ib_alloc_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_mr = type { %struct.TYPE_6__, %struct.ib_mr, i32*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@IB_MR_TYPE_MEM_REG = common dso_local global i32 0, align 4
@MLX4_MAX_FAST_REG_PAGES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @mlx4_ib_alloc_mr(%struct.ib_pd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ib_mr*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_ib_dev*, align 8
  %9 = alloca %struct.mlx4_ib_mr*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %12 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.mlx4_ib_dev* @to_mdev(i32 %13)
  store %struct.mlx4_ib_dev* %14, %struct.mlx4_ib_dev** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @IB_MR_TYPE_MEM_REG, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @MLX4_MAX_FAST_REG_PAGES, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.ib_mr* @ERR_PTR(i32 %24)
  store %struct.ib_mr* %25, %struct.ib_mr** %4, align 8
  br label %103

26:                                               ; preds = %18
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.mlx4_ib_mr* @kzalloc(i32 32, i32 %27)
  store %struct.mlx4_ib_mr* %28, %struct.mlx4_ib_mr** %9, align 8
  %29 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %9, align 8
  %30 = icmp ne %struct.mlx4_ib_mr* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.ib_mr* @ERR_PTR(i32 %33)
  store %struct.ib_mr* %34, %struct.ib_mr** %4, align 8
  br label %103

35:                                               ; preds = %26
  %36 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %37 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %40 = call %struct.TYPE_5__* @to_mpd(%struct.ib_pd* %39)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %9, align 8
  %45 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %44, i32 0, i32 0
  %46 = call i32 @mlx4_mr_alloc(i32 %38, i32 %42, i32 0, i32 0, i32 0, i32 %43, i32 0, %struct.TYPE_6__* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  br label %98

50:                                               ; preds = %35
  %51 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %52 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %9, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @mlx4_alloc_priv_pages(i32 %53, %struct.mlx4_ib_mr* %54, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %91

60:                                               ; preds = %50
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %9, align 8
  %63 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %65 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %9, align 8
  %68 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %67, i32 0, i32 0
  %69 = call i32 @mlx4_mr_enable(i32 %66, %struct.TYPE_6__* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %88

73:                                               ; preds = %60
  %74 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %9, align 8
  %75 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %9, align 8
  %79 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %9, align 8
  %82 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %82, i32 0, i32 1
  store i32 %77, i32* %83, align 4
  %84 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %9, align 8
  %85 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %84, i32 0, i32 2
  store i32* null, i32** %85, align 8
  %86 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %9, align 8
  %87 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %86, i32 0, i32 1
  store %struct.ib_mr* %87, %struct.ib_mr** %4, align 8
  br label %103

88:                                               ; preds = %72
  %89 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %9, align 8
  %90 = call i32 @mlx4_free_priv_pages(%struct.mlx4_ib_mr* %89)
  br label %91

91:                                               ; preds = %88, %59
  %92 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %93 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %9, align 8
  %96 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %95, i32 0, i32 0
  %97 = call i32 @mlx4_mr_free(i32 %94, %struct.TYPE_6__* %96)
  br label %98

98:                                               ; preds = %91, %49
  %99 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %9, align 8
  %100 = call i32 @kfree(%struct.mlx4_ib_mr* %99)
  %101 = load i32, i32* %10, align 4
  %102 = call %struct.ib_mr* @ERR_PTR(i32 %101)
  store %struct.ib_mr* %102, %struct.ib_mr** %4, align 8
  br label %103

103:                                              ; preds = %98, %73, %31, %22
  %104 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  ret %struct.ib_mr* %104
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local %struct.mlx4_ib_mr* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx4_mr_alloc(i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_5__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @mlx4_alloc_priv_pages(i32, %struct.mlx4_ib_mr*, i32) #1

declare dso_local i32 @mlx4_mr_enable(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mlx4_free_priv_pages(%struct.mlx4_ib_mr*) #1

declare dso_local i32 @mlx4_mr_free(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
