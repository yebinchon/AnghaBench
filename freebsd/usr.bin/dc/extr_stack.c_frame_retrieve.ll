; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_frame_retrieve.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_frame_retrieve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.stack = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.array* }
%struct.array = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @frame_retrieve(%struct.stack* %0, i64 %1) #0 {
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.stack*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.array*, align 8
  store %struct.stack* %0, %struct.stack** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.stack*, %struct.stack** %4, align 8
  %8 = getelementptr inbounds %struct.stack, %struct.stack* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.value* null, %struct.value** %3, align 8
  br label %40

12:                                               ; preds = %2
  %13 = load %struct.stack*, %struct.stack** %4, align 8
  %14 = getelementptr inbounds %struct.stack, %struct.stack* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load %struct.stack*, %struct.stack** %4, align 8
  %17 = getelementptr inbounds %struct.stack, %struct.stack* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.array*, %struct.array** %21, align 8
  store %struct.array* %22, %struct.array** %6, align 8
  %23 = load %struct.array*, %struct.array** %6, align 8
  %24 = icmp eq %struct.array* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %12
  %26 = call %struct.array* (...) @array_new()
  %27 = load %struct.stack*, %struct.stack** %4, align 8
  %28 = getelementptr inbounds %struct.stack, %struct.stack* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load %struct.stack*, %struct.stack** %4, align 8
  %31 = getelementptr inbounds %struct.stack, %struct.stack* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store %struct.array* %26, %struct.array** %35, align 8
  store %struct.array* %26, %struct.array** %6, align 8
  br label %36

36:                                               ; preds = %25, %12
  %37 = load %struct.array*, %struct.array** %6, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call %struct.value* @array_retrieve(%struct.array* %37, i64 %38)
  store %struct.value* %39, %struct.value** %3, align 8
  br label %40

40:                                               ; preds = %36, %11
  %41 = load %struct.value*, %struct.value** %3, align 8
  ret %struct.value* %41
}

declare dso_local %struct.array* @array_new(...) #1

declare dso_local %struct.value* @array_retrieve(%struct.array*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
