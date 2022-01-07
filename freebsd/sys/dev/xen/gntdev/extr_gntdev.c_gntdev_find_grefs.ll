; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_gntdev_find_grefs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_gntdev_find_grefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntdev_gref = type { i64 }
%struct.per_user_data = type { i32, i32 }

@gref_tree_head = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gntdev_gref* (%struct.per_user_data*, i64, i64)* @gntdev_find_grefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gntdev_gref* @gntdev_find_grefs(%struct.per_user_data* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.gntdev_gref*, align 8
  %5 = alloca %struct.per_user_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gntdev_gref, align 8
  %9 = alloca %struct.gntdev_gref*, align 8
  %10 = alloca %struct.gntdev_gref*, align 8
  store %struct.per_user_data* %0, %struct.per_user_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.gntdev_gref* null, %struct.gntdev_gref** %10, align 8
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %8, i32 0, i32 0
  store i64 %11, i64* %12, align 8
  %13 = load %struct.per_user_data*, %struct.per_user_data** %5, align 8
  %14 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %13, i32 0, i32 0
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load i32, i32* @gref_tree_head, align 4
  %17 = load %struct.per_user_data*, %struct.per_user_data** %5, align 8
  %18 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %17, i32 0, i32 1
  %19 = call %struct.gntdev_gref* @RB_FIND(i32 %16, i32* %18, %struct.gntdev_gref* %8)
  store %struct.gntdev_gref* %19, %struct.gntdev_gref** %10, align 8
  %20 = load %struct.gntdev_gref*, %struct.gntdev_gref** %10, align 8
  store %struct.gntdev_gref* %20, %struct.gntdev_gref** %9, align 8
  br label %21

21:                                               ; preds = %42, %3
  %22 = load %struct.gntdev_gref*, %struct.gntdev_gref** %9, align 8
  %23 = icmp ne %struct.gntdev_gref* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, i64* %7, align 8
  %26 = icmp sgt i64 %25, 0
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i1 [ false, %21 ], [ %26, %24 ]
  br i1 %28, label %29, label %48

29:                                               ; preds = %27
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.gntdev_gref*, %struct.gntdev_gref** %9, align 8
  %32 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %48

36:                                               ; preds = %29
  %37 = load i64, i64* @PAGE_SIZE, align 8
  %38 = load i64, i64* %6, align 8
  %39 = add nsw i64 %38, %37
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @gref_tree_head, align 4
  %44 = load %struct.per_user_data*, %struct.per_user_data** %5, align 8
  %45 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %44, i32 0, i32 1
  %46 = load %struct.gntdev_gref*, %struct.gntdev_gref** %9, align 8
  %47 = call %struct.gntdev_gref* @RB_NEXT(i32 %43, i32* %45, %struct.gntdev_gref* %46)
  store %struct.gntdev_gref* %47, %struct.gntdev_gref** %9, align 8
  br label %21

48:                                               ; preds = %35, %27
  %49 = load %struct.per_user_data*, %struct.per_user_data** %5, align 8
  %50 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %49, i32 0, i32 0
  %51 = call i32 @mtx_unlock(i32* %50)
  %52 = load i64, i64* %7, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store %struct.gntdev_gref* null, %struct.gntdev_gref** %4, align 8
  br label %57

55:                                               ; preds = %48
  %56 = load %struct.gntdev_gref*, %struct.gntdev_gref** %10, align 8
  store %struct.gntdev_gref* %56, %struct.gntdev_gref** %4, align 8
  br label %57

57:                                               ; preds = %55, %54
  %58 = load %struct.gntdev_gref*, %struct.gntdev_gref** %4, align 8
  ret %struct.gntdev_gref* %58
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.gntdev_gref* @RB_FIND(i32, i32*, %struct.gntdev_gref*) #1

declare dso_local %struct.gntdev_gref* @RB_NEXT(i32, i32*, %struct.gntdev_gref*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
