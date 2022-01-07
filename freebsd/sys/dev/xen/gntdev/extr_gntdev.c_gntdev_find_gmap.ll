; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_gntdev_find_gmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_gntdev_find_gmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntdev_gmap = type { i64, i32 }
%struct.per_user_data = type { i32, i32 }

@gmap_tree_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gntdev_gmap* (%struct.per_user_data*, i32, i64)* @gntdev_find_gmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gntdev_gmap* @gntdev_find_gmap(%struct.per_user_data* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.gntdev_gmap*, align 8
  %5 = alloca %struct.per_user_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.gntdev_gmap, align 8
  %9 = alloca %struct.gntdev_gmap*, align 8
  store %struct.per_user_data* %0, %struct.per_user_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %8, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = load %struct.per_user_data*, %struct.per_user_data** %5, align 8
  %13 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %12, i32 0, i32 0
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load i32, i32* @gmap_tree_head, align 4
  %16 = load %struct.per_user_data*, %struct.per_user_data** %5, align 8
  %17 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %16, i32 0, i32 1
  %18 = call %struct.gntdev_gmap* @RB_FIND(i32 %15, i32* %17, %struct.gntdev_gmap* %8)
  store %struct.gntdev_gmap* %18, %struct.gntdev_gmap** %9, align 8
  %19 = load %struct.per_user_data*, %struct.per_user_data** %5, align 8
  %20 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %19, i32 0, i32 0
  %21 = call i32 @mtx_unlock(i32* %20)
  %22 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %23 = icmp ne %struct.gntdev_gmap* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  %26 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %9, align 8
  store %struct.gntdev_gmap* %31, %struct.gntdev_gmap** %4, align 8
  br label %33

32:                                               ; preds = %24, %3
  store %struct.gntdev_gmap* null, %struct.gntdev_gmap** %4, align 8
  br label %33

33:                                               ; preds = %32, %30
  %34 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %4, align 8
  ret %struct.gntdev_gmap* %34
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.gntdev_gmap* @RB_FIND(i32, i32*, %struct.gntdev_gmap*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
