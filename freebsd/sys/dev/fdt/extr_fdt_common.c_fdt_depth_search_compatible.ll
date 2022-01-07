; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_common.c_fdt_depth_search_compatible.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_common.c_fdt_depth_search_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fdt_depth_search_compatible(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @OF_child(i64 %10)
  store i64 %11, i64* %9, align 8
  br label %12

12:                                               ; preds = %40, %3
  %13 = load i64, i64* %9, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %12
  %16 = load i64, i64* %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @ofw_bus_node_is_compatible(i64 %16, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* %9, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @fdt_is_compatible_strict(i64 %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %20
  %29 = load i64, i64* %9, align 8
  store i64 %29, i64* %4, align 8
  br label %44

30:                                               ; preds = %23, %15
  %31 = load i64, i64* %9, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @fdt_depth_search_compatible(i64 %31, i8* %32, i32 %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i64, i64* %8, align 8
  store i64 %38, i64* %4, align 8
  br label %44

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %9, align 8
  %42 = call i64 @OF_peer(i64 %41)
  store i64 %42, i64* %9, align 8
  br label %12

43:                                               ; preds = %12
  store i64 0, i64* %4, align 8
  br label %44

44:                                               ; preds = %43, %37, %28
  %45 = load i64, i64* %4, align 8
  ret i64 %45
}

declare dso_local i64 @OF_child(i64) #1

declare dso_local i64 @ofw_bus_node_is_compatible(i64, i8*) #1

declare dso_local i64 @fdt_is_compatible_strict(i64, i8*) #1

declare dso_local i64 @OF_peer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
