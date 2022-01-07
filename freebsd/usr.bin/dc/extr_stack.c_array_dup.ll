; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_array_dup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_array_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.array* (%struct.array*)* @array_dup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.array* @array_dup(%struct.array* %0) #0 {
  %2 = alloca %struct.array*, align 8
  %3 = alloca %struct.array*, align 8
  %4 = alloca %struct.array*, align 8
  %5 = alloca i64, align 8
  store %struct.array* %0, %struct.array** %3, align 8
  %6 = load %struct.array*, %struct.array** %3, align 8
  %7 = icmp eq %struct.array* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.array* null, %struct.array** %2, align 8
  br label %39

9:                                                ; preds = %1
  %10 = call %struct.array* (...) @array_new()
  store %struct.array* %10, %struct.array** %4, align 8
  %11 = load %struct.array*, %struct.array** %4, align 8
  %12 = load %struct.array*, %struct.array** %3, align 8
  %13 = getelementptr inbounds %struct.array, %struct.array* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @array_grow(%struct.array* %11, i64 %14)
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %34, %9
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.array*, %struct.array** %3, align 8
  %19 = getelementptr inbounds %struct.array, %struct.array* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = load %struct.array*, %struct.array** %3, align 8
  %24 = getelementptr inbounds %struct.array, %struct.array* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load %struct.array*, %struct.array** %4, align 8
  %29 = getelementptr inbounds %struct.array, %struct.array* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = call i32 @stack_dup_value(i32* %27, i32* %32)
  br label %34

34:                                               ; preds = %22
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %5, align 8
  br label %16

37:                                               ; preds = %16
  %38 = load %struct.array*, %struct.array** %4, align 8
  store %struct.array* %38, %struct.array** %2, align 8
  br label %39

39:                                               ; preds = %37, %8
  %40 = load %struct.array*, %struct.array** %2, align 8
  ret %struct.array* %40
}

declare dso_local %struct.array* @array_new(...) #1

declare dso_local i32 @array_grow(%struct.array*, i64) #1

declare dso_local i32 @stack_dup_value(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
