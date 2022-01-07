; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mac_free_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mac_free_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, i32, i32*, i32)* @mac_free_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_free_res(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
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
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %11, align 4
  switch i32 %18, label %48 [
    i32 128, label %19
  ]

19:                                               ; preds = %7
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32*, i32** %14, align 8
  %24 = call i32 @get_param_l(i32* %23)
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %15, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i32 [ %24, %22 ], [ %26, %25 ]
  store i32 %28, i32* %16, align 4
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %16, align 4
  %32 = call i32 @mlx4_slave_convert_port(%struct.mlx4_dev* %29, i32 %30, i32 %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %53

38:                                               ; preds = %27
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @mac_del_from_slave(%struct.mlx4_dev* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @__mlx4_unregister_mac(%struct.mlx4_dev* %44, i32 %45, i32 %46)
  br label %51

48:                                               ; preds = %7
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %17, align 4
  br label %51

51:                                               ; preds = %48, %38
  %52 = load i32, i32* %17, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %51, %35
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i32 @get_param_l(i32*) #1

declare dso_local i32 @mlx4_slave_convert_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mac_del_from_slave(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @__mlx4_unregister_mac(%struct.mlx4_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
