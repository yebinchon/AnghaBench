; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cq.c_mlx4_ib_get_cq_umem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cq.c_mlx4_ib_get_cq_umem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ib_ucontext = type { i32 }
%struct.mlx4_ib_cq_buf = type { i32 }
%struct.ib_umem = type { i32 }

@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, %struct.ib_ucontext*, %struct.mlx4_ib_cq_buf*, %struct.ib_umem**, i32, i32)* @mlx4_ib_get_cq_umem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_get_cq_umem(%struct.mlx4_ib_dev* %0, %struct.ib_ucontext* %1, %struct.mlx4_ib_cq_buf* %2, %struct.ib_umem** %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_ib_dev*, align 8
  %9 = alloca %struct.ib_ucontext*, align 8
  %10 = alloca %struct.mlx4_ib_cq_buf*, align 8
  %11 = alloca %struct.ib_umem**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %8, align 8
  store %struct.ib_ucontext* %1, %struct.ib_ucontext** %9, align 8
  store %struct.mlx4_ib_cq_buf* %2, %struct.mlx4_ib_cq_buf** %10, align 8
  store %struct.ib_umem** %3, %struct.ib_umem*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %17 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %15, align 4
  %22 = load %struct.ib_ucontext*, %struct.ib_ucontext** %9, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %15, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %28 = call %struct.ib_umem* @ib_umem_get(%struct.ib_ucontext* %22, i32 %23, i32 %26, i32 %27, i32 1)
  %29 = load %struct.ib_umem**, %struct.ib_umem*** %11, align 8
  store %struct.ib_umem* %28, %struct.ib_umem** %29, align 8
  %30 = load %struct.ib_umem**, %struct.ib_umem*** %11, align 8
  %31 = load %struct.ib_umem*, %struct.ib_umem** %30, align 8
  %32 = call i64 @IS_ERR(%struct.ib_umem* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %6
  %35 = load %struct.ib_umem**, %struct.ib_umem*** %11, align 8
  %36 = load %struct.ib_umem*, %struct.ib_umem** %35, align 8
  %37 = call i32 @PTR_ERR(%struct.ib_umem* %36)
  store i32 %37, i32* %7, align 4
  br label %79

38:                                               ; preds = %6
  %39 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %40 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load %struct.ib_umem**, %struct.ib_umem*** %11, align 8
  %43 = load %struct.ib_umem*, %struct.ib_umem** %42, align 8
  %44 = call i32 @ib_umem_page_count(%struct.ib_umem* %43)
  %45 = load %struct.ib_umem**, %struct.ib_umem*** %11, align 8
  %46 = load %struct.ib_umem*, %struct.ib_umem** %45, align 8
  %47 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ilog2(i32 %48)
  %50 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %10, align 8
  %51 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %50, i32 0, i32 0
  %52 = call i32 @mlx4_mtt_init(%struct.TYPE_5__* %41, i32 %44, i32 %49, i32* %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %38
  br label %74

56:                                               ; preds = %38
  %57 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %58 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %10, align 8
  %59 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %58, i32 0, i32 0
  %60 = load %struct.ib_umem**, %struct.ib_umem*** %11, align 8
  %61 = load %struct.ib_umem*, %struct.ib_umem** %60, align 8
  %62 = call i32 @mlx4_ib_umem_write_mtt(%struct.mlx4_ib_dev* %57, i32* %59, %struct.ib_umem* %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %67

66:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %79

67:                                               ; preds = %65
  %68 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %69 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %10, align 8
  %72 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %71, i32 0, i32 0
  %73 = call i32 @mlx4_mtt_cleanup(%struct.TYPE_5__* %70, i32* %72)
  br label %74

74:                                               ; preds = %67, %55
  %75 = load %struct.ib_umem**, %struct.ib_umem*** %11, align 8
  %76 = load %struct.ib_umem*, %struct.ib_umem** %75, align 8
  %77 = call i32 @ib_umem_release(%struct.ib_umem* %76)
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %74, %66, %34
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local %struct.ib_umem* @ib_umem_get(%struct.ib_ucontext*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_umem*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_umem*) #1

declare dso_local i32 @mlx4_mtt_init(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @ib_umem_page_count(%struct.ib_umem*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @mlx4_ib_umem_write_mtt(%struct.mlx4_ib_dev*, i32*, %struct.ib_umem*) #1

declare dso_local i32 @mlx4_mtt_cleanup(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @ib_umem_release(%struct.ib_umem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
