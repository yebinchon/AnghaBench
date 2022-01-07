; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_find_field_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_find_field_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i32 }
%struct.key_specs = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwstring*, %struct.key_specs*, i64*, i64*, i32*, i32*)* @find_field_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_field_start(%struct.bwstring* %0, %struct.key_specs* %1, i64* %2, i64* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.bwstring*, align 8
  %8 = alloca %struct.key_specs*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.bwstring* %0, %struct.bwstring** %7, align 8
  store %struct.key_specs* %1, %struct.key_specs** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load %struct.bwstring*, %struct.bwstring** %7, align 8
  %14 = load %struct.key_specs*, %struct.key_specs** %8, align 8
  %15 = getelementptr inbounds %struct.key_specs, %struct.key_specs* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %11, align 8
  %18 = call i64 @skip_fields_to_start(%struct.bwstring* %13, i32 %16, i32* %17)
  %19 = load i64*, i64** %9, align 8
  store i64 %18, i64* %19, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %6
  %24 = load %struct.bwstring*, %struct.bwstring** %7, align 8
  %25 = load %struct.key_specs*, %struct.key_specs** %8, align 8
  %26 = getelementptr inbounds %struct.key_specs, %struct.key_specs* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i64*, i64** %9, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.key_specs*, %struct.key_specs** %8, align 8
  %31 = getelementptr inbounds %struct.key_specs, %struct.key_specs* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %12, align 8
  %34 = call i64 @skip_cols_to_start(%struct.bwstring* %24, i32 %27, i64 %29, i32 %32, i32* %33)
  %35 = load i64*, i64** %10, align 8
  store i64 %34, i64* %35, align 8
  br label %38

36:                                               ; preds = %6
  %37 = load i32*, i32** %12, align 8
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %36, %23
  ret void
}

declare dso_local i64 @skip_fields_to_start(%struct.bwstring*, i32, i32*) #1

declare dso_local i64 @skip_cols_to_start(%struct.bwstring*, i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
