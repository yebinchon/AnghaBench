; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_clean_keys_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_clean_keys_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i32 }
%struct.keys_array = type { i32 }
%struct.key_value = type { %struct.bwstring* }

@keys_num = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clean_keys_array(%struct.bwstring* %0, %struct.keys_array* %1) #0 {
  %3 = alloca %struct.bwstring*, align 8
  %4 = alloca %struct.keys_array*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.key_value*, align 8
  store %struct.bwstring* %0, %struct.bwstring** %3, align 8
  store %struct.keys_array* %1, %struct.keys_array** %4, align 8
  %7 = load %struct.keys_array*, %struct.keys_array** %4, align 8
  %8 = icmp ne %struct.keys_array* %7, null
  br i1 %8, label %9, label %41

9:                                                ; preds = %2
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %34, %9
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @keys_num, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load %struct.keys_array*, %struct.keys_array** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call %struct.key_value* @get_key_from_keys_array(%struct.keys_array* %15, i64 %16)
  store %struct.key_value* %17, %struct.key_value** %6, align 8
  %18 = load %struct.key_value*, %struct.key_value** %6, align 8
  %19 = getelementptr inbounds %struct.key_value, %struct.key_value* %18, i32 0, i32 0
  %20 = load %struct.bwstring*, %struct.bwstring** %19, align 8
  %21 = icmp ne %struct.bwstring* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %14
  %23 = load %struct.key_value*, %struct.key_value** %6, align 8
  %24 = getelementptr inbounds %struct.key_value, %struct.key_value* %23, i32 0, i32 0
  %25 = load %struct.bwstring*, %struct.bwstring** %24, align 8
  %26 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %27 = icmp ne %struct.bwstring* %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.key_value*, %struct.key_value** %6, align 8
  %30 = getelementptr inbounds %struct.key_value, %struct.key_value* %29, i32 0, i32 0
  %31 = load %struct.bwstring*, %struct.bwstring** %30, align 8
  %32 = call i32 @bwsfree(%struct.bwstring* %31)
  br label %33

33:                                               ; preds = %28, %22, %14
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %5, align 8
  br label %10

37:                                               ; preds = %10
  %38 = load %struct.keys_array*, %struct.keys_array** %4, align 8
  %39 = call i32 (...) @keys_array_size()
  %40 = call i32 @memset(%struct.keys_array* %38, i32 0, i32 %39)
  br label %41

41:                                               ; preds = %37, %2
  ret void
}

declare dso_local %struct.key_value* @get_key_from_keys_array(%struct.keys_array*, i64) #1

declare dso_local i32 @bwsfree(%struct.bwstring*) #1

declare dso_local i32 @memset(%struct.keys_array*, i32, i32) #1

declare dso_local i32 @keys_array_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
