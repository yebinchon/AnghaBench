; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_frame_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_frame_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.array* }
%struct.array = type { i32 }
%struct.value = type { i32*, i32 }

@BCODE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frame_assign(%struct.stack* %0, i64 %1, %struct.value* %2) #0 {
  %4 = alloca %struct.stack*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.value*, align 8
  %7 = alloca %struct.array*, align 8
  %8 = alloca %struct.value, align 8
  store %struct.stack* %0, %struct.stack** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.value* %2, %struct.value** %6, align 8
  %9 = load %struct.stack*, %struct.stack** %4, align 8
  %10 = getelementptr inbounds %struct.stack, %struct.stack* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* @BCODE_NONE, align 4
  %15 = getelementptr inbounds %struct.value, %struct.value* %8, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.value, %struct.value* %8, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load %struct.stack*, %struct.stack** %4, align 8
  %18 = call i32 @stack_push(%struct.stack* %17, %struct.value* %8)
  br label %19

19:                                               ; preds = %13, %3
  %20 = load %struct.stack*, %struct.stack** %4, align 8
  %21 = getelementptr inbounds %struct.stack, %struct.stack* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.stack*, %struct.stack** %4, align 8
  %24 = getelementptr inbounds %struct.stack, %struct.stack* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.array*, %struct.array** %28, align 8
  store %struct.array* %29, %struct.array** %7, align 8
  %30 = load %struct.array*, %struct.array** %7, align 8
  %31 = icmp eq %struct.array* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %19
  %33 = call %struct.array* (...) @array_new()
  %34 = load %struct.stack*, %struct.stack** %4, align 8
  %35 = getelementptr inbounds %struct.stack, %struct.stack* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load %struct.stack*, %struct.stack** %4, align 8
  %38 = getelementptr inbounds %struct.stack, %struct.stack* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store %struct.array* %33, %struct.array** %42, align 8
  store %struct.array* %33, %struct.array** %7, align 8
  br label %43

43:                                               ; preds = %32, %19
  %44 = load %struct.array*, %struct.array** %7, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.value*, %struct.value** %6, align 8
  %47 = call i32 @array_assign(%struct.array* %44, i64 %45, %struct.value* %46)
  ret void
}

declare dso_local i32 @stack_push(%struct.stack*, %struct.value*) #1

declare dso_local %struct.array* @array_new(...) #1

declare dso_local i32 @array_assign(%struct.array*, i64, %struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
