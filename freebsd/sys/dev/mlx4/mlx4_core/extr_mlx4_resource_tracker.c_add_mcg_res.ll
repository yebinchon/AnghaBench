; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_add_mcg_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_add_mcg_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.res_qp = type { i32, i32 }
%struct.res_gid = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, %struct.res_qp*, i32*, i32, i32, i32)* @add_mcg_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_mcg_res(%struct.mlx4_dev* %0, i32 %1, %struct.res_qp* %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.res_qp*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.res_gid*, align 8
  %17 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.res_qp* %2, %struct.res_qp** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.res_gid* @kzalloc(i32 20, i32 %18)
  store %struct.res_gid* %19, %struct.res_gid** %16, align 8
  %20 = load %struct.res_gid*, %struct.res_gid** %16, align 8
  %21 = icmp ne %struct.res_gid* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %65

25:                                               ; preds = %7
  %26 = load %struct.res_qp*, %struct.res_qp** %11, align 8
  %27 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %26, i32 0, i32 0
  %28 = call i32 @spin_lock_irq(i32* %27)
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.res_qp*, %struct.res_qp** %11, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i64 @find_gid(%struct.mlx4_dev* %29, i32 %30, %struct.res_qp* %31, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load %struct.res_gid*, %struct.res_gid** %16, align 8
  %37 = call i32 @kfree(%struct.res_gid* %36)
  %38 = load i32, i32* @EEXIST, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %17, align 4
  br label %60

40:                                               ; preds = %25
  %41 = load %struct.res_gid*, %struct.res_gid** %16, align 8
  %42 = getelementptr inbounds %struct.res_gid, %struct.res_gid* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @memcpy(i32 %43, i32* %44, i32 16)
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.res_gid*, %struct.res_gid** %16, align 8
  %48 = getelementptr inbounds %struct.res_gid, %struct.res_gid* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.res_gid*, %struct.res_gid** %16, align 8
  %51 = getelementptr inbounds %struct.res_gid, %struct.res_gid* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.res_gid*, %struct.res_gid** %16, align 8
  %54 = getelementptr inbounds %struct.res_gid, %struct.res_gid* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.res_gid*, %struct.res_gid** %16, align 8
  %56 = getelementptr inbounds %struct.res_gid, %struct.res_gid* %55, i32 0, i32 2
  %57 = load %struct.res_qp*, %struct.res_qp** %11, align 8
  %58 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %57, i32 0, i32 1
  %59 = call i32 @list_add_tail(i32* %56, i32* %58)
  store i32 0, i32* %17, align 4
  br label %60

60:                                               ; preds = %40, %35
  %61 = load %struct.res_qp*, %struct.res_qp** %11, align 8
  %62 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock_irq(i32* %62)
  %64 = load i32, i32* %17, align 4
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %60, %22
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local %struct.res_gid* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @find_gid(%struct.mlx4_dev*, i32, %struct.res_qp*, i32*) #1

declare dso_local i32 @kfree(%struct.res_gid*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
