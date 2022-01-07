; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_radixsort.c_add_leaf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_radixsort.c_add_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_level = type { i32, i32, %struct.sort_list_item** }
%struct.sort_list_item = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sort_level*, %struct.sort_list_item*)* @add_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_leaf(%struct.sort_level* %0, %struct.sort_list_item* %1) #0 {
  %3 = alloca %struct.sort_level*, align 8
  %4 = alloca %struct.sort_list_item*, align 8
  store %struct.sort_level* %0, %struct.sort_level** %3, align 8
  store %struct.sort_list_item* %1, %struct.sort_list_item** %4, align 8
  %5 = load %struct.sort_level*, %struct.sort_level** %3, align 8
  %6 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 8
  %9 = load %struct.sort_level*, %struct.sort_level** %3, align 8
  %10 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %8, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load %struct.sort_level*, %struct.sort_level** %3, align 8
  %15 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 128
  %18 = load %struct.sort_level*, %struct.sort_level** %3, align 8
  %19 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sort_level*, %struct.sort_level** %3, align 8
  %21 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %20, i32 0, i32 2
  %22 = load %struct.sort_list_item**, %struct.sort_list_item*** %21, align 8
  %23 = load %struct.sort_level*, %struct.sort_level** %3, align 8
  %24 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 8, %26
  %28 = trunc i64 %27 to i32
  %29 = call %struct.sort_list_item** @sort_realloc(%struct.sort_list_item** %22, i32 %28)
  %30 = load %struct.sort_level*, %struct.sort_level** %3, align 8
  %31 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %30, i32 0, i32 2
  store %struct.sort_list_item** %29, %struct.sort_list_item*** %31, align 8
  br label %32

32:                                               ; preds = %13, %2
  %33 = load %struct.sort_list_item*, %struct.sort_list_item** %4, align 8
  %34 = load %struct.sort_level*, %struct.sort_level** %3, align 8
  %35 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %34, i32 0, i32 2
  %36 = load %struct.sort_list_item**, %struct.sort_list_item*** %35, align 8
  %37 = load %struct.sort_level*, %struct.sort_level** %3, align 8
  %38 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.sort_list_item*, %struct.sort_list_item** %36, i64 %41
  store %struct.sort_list_item* %33, %struct.sort_list_item** %42, align 8
  ret void
}

declare dso_local %struct.sort_list_item** @sort_realloc(%struct.sort_list_item**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
