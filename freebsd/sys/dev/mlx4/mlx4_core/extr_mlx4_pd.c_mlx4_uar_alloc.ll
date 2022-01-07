; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_pd.c_mlx4_uar_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_pd.c_mlx4_uar_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mlx4_uar = type { i32, i32, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_uar_alloc(%struct.mlx4_dev* %0, %struct.mlx4_uar* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_uar*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_uar* %1, %struct.mlx4_uar** %5, align 8
  %7 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %8 = call %struct.TYPE_8__* @mlx4_priv(%struct.mlx4_dev* %7)
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = call i32 @mlx4_bitmap_alloc(i32* %10)
  %12 = load %struct.mlx4_uar*, %struct.mlx4_uar** %5, align 8
  %13 = getelementptr inbounds %struct.mlx4_uar, %struct.mlx4_uar* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.mlx4_uar*, %struct.mlx4_uar** %5, align 8
  %15 = getelementptr inbounds %struct.mlx4_uar, %struct.mlx4_uar* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %61

21:                                               ; preds = %2
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %23 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load %struct.mlx4_uar*, %struct.mlx4_uar** %5, align 8
  %27 = getelementptr inbounds %struct.mlx4_uar, %struct.mlx4_uar* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %30 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @pci_resource_len(i32 %33, i32 2)
  %35 = trunc i64 %34 to i32
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %37 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sdiv i32 %35, %39
  %41 = srem i32 %28, %40
  store i32 %41, i32* %6, align 4
  br label %46

42:                                               ; preds = %21
  %43 = load %struct.mlx4_uar*, %struct.mlx4_uar** %5, align 8
  %44 = getelementptr inbounds %struct.mlx4_uar, %struct.mlx4_uar* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %42, %25
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %48 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pci_resource_start(i32 %51, i32 2)
  %53 = load i32, i32* @PAGE_SHIFT, align 4
  %54 = ashr i32 %52, %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %54, %55
  %57 = load %struct.mlx4_uar*, %struct.mlx4_uar** %5, align 8
  %58 = getelementptr inbounds %struct.mlx4_uar, %struct.mlx4_uar* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.mlx4_uar*, %struct.mlx4_uar** %5, align 8
  %60 = getelementptr inbounds %struct.mlx4_uar, %struct.mlx4_uar* %59, i32 0, i32 2
  store i32* null, i32** %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %46, %18
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @mlx4_bitmap_alloc(i32*) #1

declare dso_local %struct.TYPE_8__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i64 @pci_resource_len(i32, i32) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
