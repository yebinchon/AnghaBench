; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mpt_alloc_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mpt_alloc_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.res_mpt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RES_MPT = common dso_local global i32 0, align 4
@RES_MPT_MAPPED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, i32, i32*)* @mpt_alloc_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_alloc_res(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.res_mpt*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %101 [
    i32 128, label %21
    i32 129, label %64
  ]

21:                                               ; preds = %6
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @RES_MPT, align 4
  %25 = call i32 @mlx4_grant_resource(%struct.mlx4_dev* %22, i32 %23, i32 %24, i32 1, i32 0)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %101

29:                                               ; preds = %21
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %31 = call i32 @__mlx4_mpt_reserve(%struct.mlx4_dev* %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @RES_MPT, align 4
  %38 = call i32 @mlx4_release_resource(%struct.mlx4_dev* %35, i32 %36, i32 %37, i32 1, i32 0)
  br label %101

39:                                               ; preds = %29
  %40 = load i32, i32* %15, align 4
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %42 = call i32 @mpt_mask(%struct.mlx4_dev* %41)
  %43 = and i32 %40, %42
  store i32 %43, i32* %16, align 4
  %44 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* @RES_MPT, align 4
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @add_res_range(%struct.mlx4_dev* %44, i32 %45, i32 %46, i32 1, i32 %47, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %39
  %53 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @RES_MPT, align 4
  %56 = call i32 @mlx4_release_resource(%struct.mlx4_dev* %53, i32 %54, i32 %55, i32 1, i32 0)
  %57 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @__mlx4_mpt_release(%struct.mlx4_dev* %57, i32 %58)
  br label %101

60:                                               ; preds = %39
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @set_param_l(i32* %61, i32 %62)
  br label %101

64:                                               ; preds = %6
  %65 = call i32 @get_param_l(i32* %12)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %68 = call i32 @mpt_mask(%struct.mlx4_dev* %67)
  %69 = and i32 %66, %68
  store i32 %69, i32* %16, align 4
  %70 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @RES_MPT_MAPPED, align 4
  %74 = call i32 @mr_res_start_move_to(%struct.mlx4_dev* %70, i32 %71, i32 %72, i32 %73, %struct.res_mpt** %17)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %64
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %7, align 4
  br label %103

79:                                               ; preds = %64
  %80 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %81 = load %struct.res_mpt*, %struct.res_mpt** %17, align 8
  %82 = getelementptr inbounds %struct.res_mpt, %struct.res_mpt* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i32 @__mlx4_mpt_alloc_icm(%struct.mlx4_dev* %80, i32 %83, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %79
  %89 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @RES_MPT, align 4
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @res_abort_move(%struct.mlx4_dev* %89, i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %7, align 4
  br label %103

95:                                               ; preds = %79
  %96 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @RES_MPT, align 4
  %99 = load i32, i32* %16, align 4
  %100 = call i32 @res_end_move(%struct.mlx4_dev* %96, i32 %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %6, %95, %60, %52, %34, %28
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %101, %88, %77
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @mlx4_grant_resource(%struct.mlx4_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @__mlx4_mpt_reserve(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_release_resource(%struct.mlx4_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mpt_mask(%struct.mlx4_dev*) #1

declare dso_local i32 @add_res_range(%struct.mlx4_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__mlx4_mpt_release(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @set_param_l(i32*, i32) #1

declare dso_local i32 @get_param_l(i32*) #1

declare dso_local i32 @mr_res_start_move_to(%struct.mlx4_dev*, i32, i32, i32, %struct.res_mpt**) #1

declare dso_local i32 @__mlx4_mpt_alloc_icm(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @res_abort_move(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @res_end_move(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
