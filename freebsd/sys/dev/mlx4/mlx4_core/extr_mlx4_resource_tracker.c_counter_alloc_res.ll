; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_counter_alloc_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_counter_alloc_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }

@RES_OP_RESERVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RES_COUNTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, i32, i32*, i32)* @counter_alloc_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counter_alloc_res(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @RES_OP_RESERVE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %67

24:                                               ; preds = %7
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @RES_COUNTER, align 4
  %28 = call i32 @mlx4_grant_resource(%struct.mlx4_dev* %25, i32 %26, i32 %27, i32 1, i32 0)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %17, align 4
  store i32 %32, i32* %8, align 4
  br label %67

33:                                               ; preds = %24
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %35 = call i32 @__mlx4_counter_alloc(%struct.mlx4_dev* %34, i32* %16)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @RES_COUNTER, align 4
  %42 = call i32 @mlx4_release_resource(%struct.mlx4_dev* %39, i32 %40, i32 %41, i32 1, i32 0)
  %43 = load i32, i32* %17, align 4
  store i32 %43, i32* %8, align 4
  br label %67

44:                                               ; preds = %33
  %45 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* @RES_COUNTER, align 4
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @add_res_range(%struct.mlx4_dev* %45, i32 %46, i32 %47, i32 1, i32 %48, i32 %49)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %44
  %54 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %55 = load i32, i32* %16, align 4
  %56 = call i32 @__mlx4_counter_free(%struct.mlx4_dev* %54, i32 %55)
  %57 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @RES_COUNTER, align 4
  %60 = call i32 @mlx4_release_resource(%struct.mlx4_dev* %57, i32 %58, i32 %59, i32 1, i32 0)
  br label %65

61:                                               ; preds = %44
  %62 = load i32*, i32** %14, align 8
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @set_param_l(i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %53
  %66 = load i32, i32* %17, align 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %65, %38, %31, %21
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local i32 @mlx4_grant_resource(%struct.mlx4_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @__mlx4_counter_alloc(%struct.mlx4_dev*, i32*) #1

declare dso_local i32 @mlx4_release_resource(%struct.mlx4_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @add_res_range(%struct.mlx4_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__mlx4_counter_free(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @set_param_l(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
