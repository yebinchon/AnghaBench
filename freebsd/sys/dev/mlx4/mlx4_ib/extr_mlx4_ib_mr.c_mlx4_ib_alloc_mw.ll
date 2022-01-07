; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mr.c_mlx4_ib_alloc_mw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mr.c_mlx4_ib_alloc_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mw = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_mw = type { %struct.TYPE_6__, %struct.ib_mw }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mw* @mlx4_ib_alloc_mw(%struct.ib_pd* %0, i32 %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_mw*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.mlx4_ib_dev*, align 8
  %9 = alloca %struct.mlx4_ib_mw*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %11 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %12 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.mlx4_ib_dev* @to_mdev(i32 %13)
  store %struct.mlx4_ib_dev* %14, %struct.mlx4_ib_dev** %8, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.mlx4_ib_mw* @kmalloc(i32 8, i32 %15)
  store %struct.mlx4_ib_mw* %16, %struct.mlx4_ib_mw** %9, align 8
  %17 = load %struct.mlx4_ib_mw*, %struct.mlx4_ib_mw** %9, align 8
  %18 = icmp ne %struct.mlx4_ib_mw* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.ib_mw* @ERR_PTR(i32 %21)
  store %struct.ib_mw* %22, %struct.ib_mw** %4, align 8
  br label %71

23:                                               ; preds = %3
  %24 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %25 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %28 = call %struct.TYPE_5__* @to_mpd(%struct.ib_pd* %27)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @to_mlx4_type(i32 %31)
  %33 = load %struct.mlx4_ib_mw*, %struct.mlx4_ib_mw** %9, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_mw, %struct.mlx4_ib_mw* %33, i32 0, i32 0
  %35 = call i32 @mlx4_mw_alloc(i32 %26, i32 %30, i32 %32, %struct.TYPE_6__* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  br label %66

39:                                               ; preds = %23
  %40 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %41 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlx4_ib_mw*, %struct.mlx4_ib_mw** %9, align 8
  %44 = getelementptr inbounds %struct.mlx4_ib_mw, %struct.mlx4_ib_mw* %43, i32 0, i32 0
  %45 = call i32 @mlx4_mw_enable(i32 %42, %struct.TYPE_6__* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %59

49:                                               ; preds = %39
  %50 = load %struct.mlx4_ib_mw*, %struct.mlx4_ib_mw** %9, align 8
  %51 = getelementptr inbounds %struct.mlx4_ib_mw, %struct.mlx4_ib_mw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlx4_ib_mw*, %struct.mlx4_ib_mw** %9, align 8
  %55 = getelementptr inbounds %struct.mlx4_ib_mw, %struct.mlx4_ib_mw* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load %struct.mlx4_ib_mw*, %struct.mlx4_ib_mw** %9, align 8
  %58 = getelementptr inbounds %struct.mlx4_ib_mw, %struct.mlx4_ib_mw* %57, i32 0, i32 1
  store %struct.ib_mw* %58, %struct.ib_mw** %4, align 8
  br label %71

59:                                               ; preds = %48
  %60 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %61 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mlx4_ib_mw*, %struct.mlx4_ib_mw** %9, align 8
  %64 = getelementptr inbounds %struct.mlx4_ib_mw, %struct.mlx4_ib_mw* %63, i32 0, i32 0
  %65 = call i32 @mlx4_mw_free(i32 %62, %struct.TYPE_6__* %64)
  br label %66

66:                                               ; preds = %59, %38
  %67 = load %struct.mlx4_ib_mw*, %struct.mlx4_ib_mw** %9, align 8
  %68 = call i32 @kfree(%struct.mlx4_ib_mw* %67)
  %69 = load i32, i32* %10, align 4
  %70 = call %struct.ib_mw* @ERR_PTR(i32 %69)
  store %struct.ib_mw* %70, %struct.ib_mw** %4, align 8
  br label %71

71:                                               ; preds = %66, %49, %19
  %72 = load %struct.ib_mw*, %struct.ib_mw** %4, align 8
  ret %struct.ib_mw* %72
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_mw* @kmalloc(i32, i32) #1

declare dso_local %struct.ib_mw* @ERR_PTR(i32) #1

declare dso_local i32 @mlx4_mw_alloc(i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_5__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @to_mlx4_type(i32) #1

declare dso_local i32 @mlx4_mw_enable(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mlx4_mw_free(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_mw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
