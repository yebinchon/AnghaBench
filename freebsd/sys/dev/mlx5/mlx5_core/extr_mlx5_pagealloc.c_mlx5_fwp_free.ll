; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_pagealloc.c_mlx5_fwp_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_pagealloc.c_mlx5_fwp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fw_page = type { i32, i32, i32, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_fwp_free(%struct.mlx5_fw_page* %0) #0 {
  %2 = alloca %struct.mlx5_fw_page*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_fw_page* %0, %struct.mlx5_fw_page** %2, align 8
  %5 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %2, align 8
  %6 = icmp eq %struct.mlx5_fw_page* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %59

8:                                                ; preds = %1
  %9 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %2, align 8
  %10 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %2, align 8
  %15 = call i32 @kfree(%struct.mlx5_fw_page* %14)
  br label %59

16:                                               ; preds = %8
  %17 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %2, align 8
  %18 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %4, align 4
  %20 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %2, align 8
  %21 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %20, i32 0, i32 3
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %21, align 8
  store %struct.mlx5_core_dev* %22, %struct.mlx5_core_dev** %3, align 8
  br label %23

23:                                               ; preds = %27, %16
  %24 = load i32, i32* %4, align 4
  %25 = add i32 %24, -1
  store i32 %25, i32* %4, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %29 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %32, i64 %34
  %36 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bus_dmamap_unload(i32 %31, i32 %37)
  %39 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %2, align 8
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %43, i64 %45
  %47 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %2, align 8
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %49, i64 %51
  %53 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bus_dmamem_free(i32 %42, i32 %48, i32 %54)
  br label %23

56:                                               ; preds = %23
  %57 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %2, align 8
  %58 = call i32 @kfree(%struct.mlx5_fw_page* %57)
  br label %59

59:                                               ; preds = %56, %13, %7
  ret void
}

declare dso_local i32 @kfree(%struct.mlx5_fw_page*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
