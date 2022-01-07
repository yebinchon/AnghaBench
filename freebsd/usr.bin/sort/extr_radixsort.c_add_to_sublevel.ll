; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_radixsort.c_add_to_sublevel.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_radixsort.c_add_to_sublevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_level = type { i32, i32, %struct.sort_list_item**, i32, %struct.sort_level**, i64 }
%struct.sort_list_item = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sort_level*, %struct.sort_list_item*, i64)* @add_to_sublevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_sublevel(%struct.sort_level* %0, %struct.sort_list_item* %1, i64 %2) #0 {
  %4 = alloca %struct.sort_level*, align 8
  %5 = alloca %struct.sort_list_item*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sort_level*, align 8
  store %struct.sort_level* %0, %struct.sort_level** %4, align 8
  store %struct.sort_list_item* %1, %struct.sort_list_item** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.sort_level*, %struct.sort_level** %4, align 8
  %9 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %8, i32 0, i32 4
  %10 = load %struct.sort_level**, %struct.sort_level*** %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds %struct.sort_level*, %struct.sort_level** %10, i64 %11
  %13 = load %struct.sort_level*, %struct.sort_level** %12, align 8
  store %struct.sort_level* %13, %struct.sort_level** %7, align 8
  %14 = load %struct.sort_level*, %struct.sort_level** %7, align 8
  %15 = icmp eq %struct.sort_level* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %3
  %17 = call %struct.sort_level* @sort_malloc(i32 40)
  store %struct.sort_level* %17, %struct.sort_level** %7, align 8
  %18 = load %struct.sort_level*, %struct.sort_level** %7, align 8
  %19 = call i32 @memset(%struct.sort_level* %18, i32 0, i32 40)
  %20 = load %struct.sort_level*, %struct.sort_level** %4, align 8
  %21 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = load %struct.sort_level*, %struct.sort_level** %7, align 8
  %25 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %24, i32 0, i32 5
  store i64 %23, i64* %25, align 8
  %26 = load %struct.sort_level*, %struct.sort_level** %7, align 8
  %27 = load %struct.sort_level*, %struct.sort_level** %4, align 8
  %28 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %27, i32 0, i32 4
  %29 = load %struct.sort_level**, %struct.sort_level*** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.sort_level*, %struct.sort_level** %29, i64 %30
  store %struct.sort_level* %26, %struct.sort_level** %31, align 8
  %32 = load %struct.sort_level*, %struct.sort_level** %4, align 8
  %33 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %16, %3
  %37 = load %struct.sort_level*, %struct.sort_level** %7, align 8
  %38 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.sort_level*, %struct.sort_level** %7, align 8
  %42 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %36
  %46 = load %struct.sort_level*, %struct.sort_level** %7, align 8
  %47 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 128
  %50 = load %struct.sort_level*, %struct.sort_level** %7, align 8
  %51 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.sort_level*, %struct.sort_level** %7, align 8
  %53 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %52, i32 0, i32 2
  %54 = load %struct.sort_list_item**, %struct.sort_list_item*** %53, align 8
  %55 = load %struct.sort_level*, %struct.sort_level** %7, align 8
  %56 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 8, %58
  %60 = trunc i64 %59 to i32
  %61 = call %struct.sort_list_item** @sort_realloc(%struct.sort_list_item** %54, i32 %60)
  %62 = load %struct.sort_level*, %struct.sort_level** %7, align 8
  %63 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %62, i32 0, i32 2
  store %struct.sort_list_item** %61, %struct.sort_list_item*** %63, align 8
  br label %64

64:                                               ; preds = %45, %36
  %65 = load %struct.sort_list_item*, %struct.sort_list_item** %5, align 8
  %66 = load %struct.sort_level*, %struct.sort_level** %7, align 8
  %67 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %66, i32 0, i32 2
  %68 = load %struct.sort_list_item**, %struct.sort_list_item*** %67, align 8
  %69 = load %struct.sort_level*, %struct.sort_level** %7, align 8
  %70 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.sort_list_item*, %struct.sort_list_item** %68, i64 %73
  store %struct.sort_list_item* %65, %struct.sort_list_item** %74, align 8
  ret void
}

declare dso_local %struct.sort_level* @sort_malloc(i32) #1

declare dso_local i32 @memset(%struct.sort_level*, i32, i32) #1

declare dso_local %struct.sort_list_item** @sort_realloc(%struct.sort_list_item**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
