; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_get_sort_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_get_sort_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_mods = type { i64, i64, i64, i64, i64, i64 }

@numcoll = common dso_local global i32 0, align 4
@hnumcoll = common dso_local global i32 0, align 4
@gnumcoll = common dso_local global i32 0, align 4
@monthcoll = common dso_local global i32 0, align 4
@randomcoll = common dso_local global i32 0, align 4
@versioncoll = common dso_local global i32 0, align 4
@wstrcoll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_sort_func(%struct.sort_mods* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sort_mods*, align 8
  store %struct.sort_mods* %0, %struct.sort_mods** %3, align 8
  %4 = load %struct.sort_mods*, %struct.sort_mods** %3, align 8
  %5 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %4, i32 0, i32 5
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @numcoll, align 4
  store i32 %9, i32* %2, align 4
  br label %47

10:                                               ; preds = %1
  %11 = load %struct.sort_mods*, %struct.sort_mods** %3, align 8
  %12 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @hnumcoll, align 4
  store i32 %16, i32* %2, align 4
  br label %47

17:                                               ; preds = %10
  %18 = load %struct.sort_mods*, %struct.sort_mods** %3, align 8
  %19 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @gnumcoll, align 4
  store i32 %23, i32* %2, align 4
  br label %47

24:                                               ; preds = %17
  %25 = load %struct.sort_mods*, %struct.sort_mods** %3, align 8
  %26 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @monthcoll, align 4
  store i32 %30, i32* %2, align 4
  br label %47

31:                                               ; preds = %24
  %32 = load %struct.sort_mods*, %struct.sort_mods** %3, align 8
  %33 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @randomcoll, align 4
  store i32 %37, i32* %2, align 4
  br label %47

38:                                               ; preds = %31
  %39 = load %struct.sort_mods*, %struct.sort_mods** %3, align 8
  %40 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @versioncoll, align 4
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @wstrcoll, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %43, %36, %29, %22, %15, %8
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
