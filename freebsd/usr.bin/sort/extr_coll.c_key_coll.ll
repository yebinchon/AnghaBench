; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_key_coll.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_key_coll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.sort_mods }
%struct.sort_mods = type { i32 (%struct.key_value.0*, %struct.key_value.0*, i64)*, i64 }
%struct.key_value.0 = type opaque
%struct.keys_array = type { i32 }
%struct.key_value = type { i32 }

@keys_num = common dso_local global i64 0, align 8
@keys = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_coll(%struct.keys_array* %0, %struct.keys_array* %1, i64 %2) #0 {
  %4 = alloca %struct.keys_array*, align 8
  %5 = alloca %struct.keys_array*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.key_value*, align 8
  %8 = alloca %struct.key_value*, align 8
  %9 = alloca %struct.sort_mods*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.keys_array* %0, %struct.keys_array** %4, align 8
  store %struct.keys_array* %1, %struct.keys_array** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %56, %3
  %13 = load i64, i64* %11, align 8
  %14 = load i64, i64* @keys_num, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %12
  %17 = load %struct.keys_array*, %struct.keys_array** %4, align 8
  %18 = load i64, i64* %11, align 8
  %19 = call %struct.key_value* @get_key_from_keys_array(%struct.keys_array* %17, i64 %18)
  store %struct.key_value* %19, %struct.key_value** %7, align 8
  %20 = load %struct.keys_array*, %struct.keys_array** %5, align 8
  %21 = load i64, i64* %11, align 8
  %22 = call %struct.key_value* @get_key_from_keys_array(%struct.keys_array* %20, i64 %21)
  store %struct.key_value* %22, %struct.key_value** %8, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keys, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.sort_mods* %26, %struct.sort_mods** %9, align 8
  %27 = load %struct.sort_mods*, %struct.sort_mods** %9, align 8
  %28 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %16
  %32 = load %struct.sort_mods*, %struct.sort_mods** %9, align 8
  %33 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %32, i32 0, i32 0
  %34 = load i32 (%struct.key_value.0*, %struct.key_value.0*, i64)*, i32 (%struct.key_value.0*, %struct.key_value.0*, i64)** %33, align 8
  %35 = load %struct.key_value*, %struct.key_value** %8, align 8
  %36 = bitcast %struct.key_value* %35 to %struct.key_value.0*
  %37 = load %struct.key_value*, %struct.key_value** %7, align 8
  %38 = bitcast %struct.key_value* %37 to %struct.key_value.0*
  %39 = load i64, i64* %6, align 8
  %40 = call i32 %34(%struct.key_value.0* %36, %struct.key_value.0* %38, i64 %39)
  store i32 %40, i32* %10, align 4
  br label %51

41:                                               ; preds = %16
  %42 = load %struct.sort_mods*, %struct.sort_mods** %9, align 8
  %43 = getelementptr inbounds %struct.sort_mods, %struct.sort_mods* %42, i32 0, i32 0
  %44 = load i32 (%struct.key_value.0*, %struct.key_value.0*, i64)*, i32 (%struct.key_value.0*, %struct.key_value.0*, i64)** %43, align 8
  %45 = load %struct.key_value*, %struct.key_value** %7, align 8
  %46 = bitcast %struct.key_value* %45 to %struct.key_value.0*
  %47 = load %struct.key_value*, %struct.key_value** %8, align 8
  %48 = bitcast %struct.key_value* %47 to %struct.key_value.0*
  %49 = load i64, i64* %6, align 8
  %50 = call i32 %44(%struct.key_value.0* %46, %struct.key_value.0* %48, i64 %49)
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %41, %31
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %59

55:                                               ; preds = %51
  store i64 0, i64* %6, align 8
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %11, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %11, align 8
  br label %12

59:                                               ; preds = %54, %12
  %60 = load i32, i32* %10, align 4
  ret i32 %60
}

declare dso_local %struct.key_value* @get_key_from_keys_array(%struct.keys_array*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
