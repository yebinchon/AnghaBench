; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_cut_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_cut_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i32 }
%struct.key_specs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bwstring* (%struct.bwstring*, %struct.key_specs*)* @cut_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bwstring* @cut_field(%struct.bwstring* %0, %struct.key_specs* %1) #0 {
  %3 = alloca %struct.bwstring*, align 8
  %4 = alloca %struct.key_specs*, align 8
  %5 = alloca %struct.bwstring*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bwstring* %0, %struct.bwstring** %3, align 8
  store %struct.key_specs* %1, %struct.key_specs** %4, align 8
  store %struct.bwstring* null, %struct.bwstring** %5, align 8
  %12 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %13 = icmp ne %struct.bwstring* %12, null
  br i1 %13, label %14, label %50

14:                                               ; preds = %2
  %15 = load %struct.key_specs*, %struct.key_specs** %4, align 8
  %16 = icmp ne %struct.key_specs* %15, null
  br i1 %16, label %17, label %50

17:                                               ; preds = %14
  store i64 0, i64* %6, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %19 = load %struct.key_specs*, %struct.key_specs** %4, align 8
  %20 = call i32 @find_field_start(%struct.bwstring* %18, %struct.key_specs* %19, i64* %6, i64* %8, i32* %10, i32* %11)
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i64 0, i64* %9, align 8
  br label %38

24:                                               ; preds = %17
  %25 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %26 = load %struct.key_specs*, %struct.key_specs** %4, align 8
  %27 = call i64 @find_field_end(%struct.bwstring* %25, %struct.key_specs* %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %36

32:                                               ; preds = %24
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = sub i64 %33, %34
  br label %36

36:                                               ; preds = %32, %31
  %37 = phi i64 [ 0, %31 ], [ %35, %32 ]
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %36, %23
  %39 = load i64, i64* %9, align 8
  %40 = call %struct.bwstring* @bwsalloc(i64 %39)
  store %struct.bwstring* %40, %struct.bwstring** %5, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %45 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @bwsnocpy(%struct.bwstring* %44, %struct.bwstring* %45, i64 %46, i64 %47)
  br label %49

49:                                               ; preds = %43, %38
  br label %52

50:                                               ; preds = %14, %2
  %51 = call %struct.bwstring* @bwsalloc(i64 0)
  store %struct.bwstring* %51, %struct.bwstring** %5, align 8
  br label %52

52:                                               ; preds = %50, %49
  %53 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  ret %struct.bwstring* %53
}

declare dso_local i32 @find_field_start(%struct.bwstring*, %struct.key_specs*, i64*, i64*, i32*, i32*) #1

declare dso_local i64 @find_field_end(%struct.bwstring*, %struct.key_specs*) #1

declare dso_local %struct.bwstring* @bwsalloc(i64) #1

declare dso_local i32 @bwsnocpy(%struct.bwstring*, %struct.bwstring*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
