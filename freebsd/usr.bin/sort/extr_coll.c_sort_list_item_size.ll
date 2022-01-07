; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_sort_list_item_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_sort_list_item_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_list_item = type { i64, i32 }
%struct.key_value = type { i64 }

@keys_num = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sort_list_item_size(%struct.sort_list_item* %0) #0 {
  %2 = alloca %struct.sort_list_item*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.key_value*, align 8
  store %struct.sort_list_item* %0, %struct.sort_list_item** %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load %struct.sort_list_item*, %struct.sort_list_item** %2, align 8
  %7 = icmp ne %struct.sort_list_item* %6, null
  br i1 %7, label %8, label %52

8:                                                ; preds = %1
  %9 = call i32 (...) @keys_array_size()
  %10 = sext i32 %9 to i64
  %11 = add i64 16, %10
  store i64 %11, i64* %3, align 8
  %12 = load %struct.sort_list_item*, %struct.sort_list_item** %2, align 8
  %13 = getelementptr inbounds %struct.sort_list_item, %struct.sort_list_item* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %8
  %17 = load %struct.sort_list_item*, %struct.sort_list_item** %2, align 8
  %18 = getelementptr inbounds %struct.sort_list_item, %struct.sort_list_item* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @bws_memsize(i64 %19)
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %3, align 8
  br label %23

23:                                               ; preds = %16, %8
  store i64 0, i64* %4, align 8
  br label %24

24:                                               ; preds = %48, %23
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @keys_num, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = load %struct.sort_list_item*, %struct.sort_list_item** %2, align 8
  %30 = getelementptr inbounds %struct.sort_list_item, %struct.sort_list_item* %29, i32 0, i32 1
  %31 = load i64, i64* %4, align 8
  %32 = call %struct.key_value* @get_key_from_keys_array(i32* %30, i64 %31)
  store %struct.key_value* %32, %struct.key_value** %5, align 8
  %33 = load %struct.key_value*, %struct.key_value** %5, align 8
  %34 = getelementptr inbounds %struct.key_value, %struct.key_value* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sort_list_item*, %struct.sort_list_item** %2, align 8
  %37 = getelementptr inbounds %struct.sort_list_item, %struct.sort_list_item* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %28
  %41 = load %struct.key_value*, %struct.key_value** %5, align 8
  %42 = getelementptr inbounds %struct.key_value, %struct.key_value* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @bws_memsize(i64 %43)
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %3, align 8
  br label %47

47:                                               ; preds = %40, %28
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %4, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %4, align 8
  br label %24

51:                                               ; preds = %24
  br label %52

52:                                               ; preds = %51, %1
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

declare dso_local i32 @keys_array_size(...) #1

declare dso_local i64 @bws_memsize(i64) #1

declare dso_local %struct.key_value* @get_key_from_keys_array(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
