; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_uar.c_mlx5_alloc_map_uar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_uar.c_mlx5_alloc_map_uar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.mlx5_uar = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"mlx5_cmd_alloc_uar() failed, %d\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"ioremap() failed, %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_alloc_map_uar(%struct.mlx5_core_dev* %0, %struct.mlx5_uar* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_uar*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_uar* %1, %struct.mlx5_uar** %5, align 8
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %10 = load %struct.mlx5_uar*, %struct.mlx5_uar** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_uar, %struct.mlx5_uar* %10, i32 0, i32 0
  %12 = call i32 @mlx5_cmd_alloc_uar(%struct.mlx5_core_dev* %9, i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %77

20:                                               ; preds = %2
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pci_resource_start(i32 %23, i32 0)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @PAGE_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = load %struct.mlx5_uar*, %struct.mlx5_uar** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5_uar, %struct.mlx5_uar* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @PAGE_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = call i32 @ioremap(i32 %34, i32 %35)
  %37 = load %struct.mlx5_uar*, %struct.mlx5_uar** %5, align 8
  %38 = getelementptr inbounds %struct.mlx5_uar, %struct.mlx5_uar* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mlx5_uar*, %struct.mlx5_uar** %5, align 8
  %40 = getelementptr inbounds %struct.mlx5_uar, %struct.mlx5_uar* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %20
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %70

49:                                               ; preds = %20
  %50 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %51 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %57 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.mlx5_uar*, %struct.mlx5_uar** %5, align 8
  %61 = getelementptr inbounds %struct.mlx5_uar, %struct.mlx5_uar* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PAGE_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = call i32 @io_mapping_map_wc(i64 %59, i32 %64, i32 %65)
  %67 = load %struct.mlx5_uar*, %struct.mlx5_uar** %5, align 8
  %68 = getelementptr inbounds %struct.mlx5_uar, %struct.mlx5_uar* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %55, %49
  store i32 0, i32* %3, align 4
  br label %77

70:                                               ; preds = %43
  %71 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %72 = load %struct.mlx5_uar*, %struct.mlx5_uar** %5, align 8
  %73 = getelementptr inbounds %struct.mlx5_uar, %struct.mlx5_uar* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @mlx5_cmd_free_uar(%struct.mlx5_core_dev* %71, i32 %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %70, %69, %15
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @mlx5_cmd_alloc_uar(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @io_mapping_map_wc(i64, i32, i32) #1

declare dso_local i32 @mlx5_cmd_free_uar(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
