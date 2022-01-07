; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_fs_alloc_fte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_fs_alloc_fte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_fte = type { i32, i32, i32, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_TYPE_FLOW_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fs_fte* (i32, i32, i32*, i32)* @fs_alloc_fte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fs_fte* @fs_alloc_fte(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.fs_fte*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fs_fte*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.fs_fte* @kzalloc(i32 32, i32 %11)
  store %struct.fs_fte* %12, %struct.fs_fte** %10, align 8
  %13 = load %struct.fs_fte*, %struct.fs_fte** %10, align 8
  %14 = icmp ne %struct.fs_fte* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.fs_fte* @ERR_PTR(i32 %17)
  store %struct.fs_fte* %18, %struct.fs_fte** %5, align 8
  br label %44

19:                                               ; preds = %4
  %20 = load %struct.fs_fte*, %struct.fs_fte** %10, align 8
  %21 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @memcpy(i32 %22, i32* %23, i32 4)
  %25 = load i32, i32* @FS_TYPE_FLOW_ENTRY, align 4
  %26 = load %struct.fs_fte*, %struct.fs_fte** %10, align 8
  %27 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.fs_fte*, %struct.fs_fte** %10, align 8
  %30 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.fs_fte*, %struct.fs_fte** %10, align 8
  %33 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.fs_fte*, %struct.fs_fte** %10, align 8
  %36 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.fs_fte*, %struct.fs_fte** %10, align 8
  %38 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %37, i32 0, i32 2
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.fs_fte*, %struct.fs_fte** %10, align 8
  %42 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.fs_fte*, %struct.fs_fte** %10, align 8
  store %struct.fs_fte* %43, %struct.fs_fte** %5, align 8
  br label %44

44:                                               ; preds = %19, %15
  %45 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  ret %struct.fs_fte* %45
}

declare dso_local %struct.fs_fte* @kzalloc(i32, i32) #1

declare dso_local %struct.fs_fte* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
