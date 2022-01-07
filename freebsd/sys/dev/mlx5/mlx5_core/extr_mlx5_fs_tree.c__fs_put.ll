; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c__fs_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c__fs_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_base = type { i32, i32, i32, i32, %struct.fs_base* }
%struct.kref = type opaque
%struct.kref.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs_base*, void (%struct.kref*)*, i32)* @_fs_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_fs_put(%struct.fs_base* %0, void (%struct.kref*)* %1, i32 %2) #0 {
  %4 = alloca %struct.fs_base*, align 8
  %5 = alloca void (%struct.kref*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fs_base*, align 8
  store %struct.fs_base* %0, %struct.fs_base** %4, align 8
  store void (%struct.kref*)* %1, void (%struct.kref*)** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.fs_base*, %struct.fs_base** %4, align 8
  %9 = getelementptr inbounds %struct.fs_base, %struct.fs_base* %8, i32 0, i32 4
  %10 = load %struct.fs_base*, %struct.fs_base** %9, align 8
  store %struct.fs_base* %10, %struct.fs_base** %7, align 8
  %11 = load %struct.fs_base*, %struct.fs_base** %7, align 8
  %12 = icmp ne %struct.fs_base* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load %struct.fs_base*, %struct.fs_base** %7, align 8
  %18 = getelementptr inbounds %struct.fs_base, %struct.fs_base* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  br label %20

20:                                               ; preds = %16, %13, %3
  %21 = load %struct.fs_base*, %struct.fs_base** %4, align 8
  %22 = getelementptr inbounds %struct.fs_base, %struct.fs_base* %21, i32 0, i32 3
  %23 = call i64 @atomic_dec_and_test(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %20
  %26 = load %struct.fs_base*, %struct.fs_base** %7, align 8
  %27 = icmp ne %struct.fs_base* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.fs_base*, %struct.fs_base** %4, align 8
  %30 = getelementptr inbounds %struct.fs_base, %struct.fs_base* %29, i32 0, i32 2
  %31 = call i32 @list_del_init(i32* %30)
  %32 = load %struct.fs_base*, %struct.fs_base** %7, align 8
  %33 = getelementptr inbounds %struct.fs_base, %struct.fs_base* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  br label %35

35:                                               ; preds = %28, %25
  %36 = load %struct.fs_base*, %struct.fs_base** %4, align 8
  %37 = getelementptr inbounds %struct.fs_base, %struct.fs_base* %36, i32 0, i32 1
  %38 = load void (%struct.kref*)*, void (%struct.kref*)** %5, align 8
  %39 = bitcast void (%struct.kref*)* %38 to void (%struct.kref.0*)*
  %40 = call i32 @kref_put(i32* %37, void (%struct.kref.0*)* %39)
  %41 = load %struct.fs_base*, %struct.fs_base** %7, align 8
  %42 = icmp ne %struct.fs_base* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.fs_base*, %struct.fs_base** %7, align 8
  %48 = getelementptr inbounds %struct.fs_base, %struct.fs_base* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  br label %50

50:                                               ; preds = %46, %43, %35
  br label %62

51:                                               ; preds = %20
  %52 = load %struct.fs_base*, %struct.fs_base** %7, align 8
  %53 = icmp ne %struct.fs_base* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load %struct.fs_base*, %struct.fs_base** %7, align 8
  %59 = getelementptr inbounds %struct.fs_base, %struct.fs_base* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  br label %61

61:                                               ; preds = %57, %54, %51
  br label %62

62:                                               ; preds = %61, %50
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, void (%struct.kref.0*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
