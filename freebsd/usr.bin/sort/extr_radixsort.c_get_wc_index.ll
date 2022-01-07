; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_radixsort.c_get_wc_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_radixsort.c_get_wc_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_list_item = type { i32 }
%struct.key_value = type { %struct.bwstring* }
%struct.bwstring = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sort_list_item*, i64)* @get_wc_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_wc_index(%struct.sort_list_item* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sort_list_item*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.key_value*, align 8
  %7 = alloca %struct.bwstring*, align 8
  store %struct.sort_list_item* %0, %struct.sort_list_item** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.sort_list_item*, %struct.sort_list_item** %4, align 8
  %9 = getelementptr inbounds %struct.sort_list_item, %struct.sort_list_item* %8, i32 0, i32 0
  %10 = call %struct.key_value* @get_key_from_keys_array(i32* %9, i32 0)
  store %struct.key_value* %10, %struct.key_value** %6, align 8
  %11 = load %struct.key_value*, %struct.key_value** %6, align 8
  %12 = getelementptr inbounds %struct.key_value, %struct.key_value* %11, i32 0, i32 0
  %13 = load %struct.bwstring*, %struct.bwstring** %12, align 8
  store %struct.bwstring* %13, %struct.bwstring** %7, align 8
  %14 = load %struct.bwstring*, %struct.bwstring** %7, align 8
  %15 = call i64 @BWSLEN(%struct.bwstring* %14)
  %16 = load i64, i64* %5, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.bwstring*, %struct.bwstring** %7, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @BWS_GET(%struct.bwstring* %19, i64 %20)
  %22 = trunc i64 %21 to i8
  %23 = zext i8 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %25

24:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.key_value* @get_key_from_keys_array(i32*, i32) #1

declare dso_local i64 @BWSLEN(%struct.bwstring*) #1

declare dso_local i64 @BWS_GET(%struct.bwstring*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
