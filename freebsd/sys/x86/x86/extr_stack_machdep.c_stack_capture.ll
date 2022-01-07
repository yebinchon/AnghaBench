; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_stack_machdep.c_stack_capture.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_stack_machdep.c_stack_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, i32 }
%struct.stack = type { i32 }
%struct.TYPE_2__ = type { i64, %struct.TYPE_2__* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, %struct.stack*, i64)* @stack_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stack_capture(%struct.thread* %0, %struct.stack* %1, i64 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.stack*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.stack* %1, %struct.stack** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.stack*, %struct.stack** %5, align 8
  %10 = call i32 @stack_zero(%struct.stack* %9)
  %11 = load i64, i64* %6, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %7, align 8
  br label %13

13:                                               ; preds = %3, %56
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %15 = ptrtoint %struct.TYPE_2__* %14 to i64
  %16 = load %struct.thread*, %struct.thread** %4, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %34, label %20

20:                                               ; preds = %13
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %22 = ptrtoint %struct.TYPE_2__* %21 to i64
  %23 = load %struct.thread*, %struct.thread** %4, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.thread*, %struct.thread** %4, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %25, %31
  %33 = icmp sge i64 %22, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %20, %13
  br label %60

35:                                               ; preds = %20
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @INKERNEL(i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %60

43:                                               ; preds = %35
  %44 = load %struct.stack*, %struct.stack** %5, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @stack_put(%struct.stack* %44, i64 %45)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %60

49:                                               ; preds = %43
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %54 = icmp ule %struct.TYPE_2__* %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %60

56:                                               ; preds = %49
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  store %struct.TYPE_2__* %59, %struct.TYPE_2__** %7, align 8
  br label %13

60:                                               ; preds = %55, %48, %42, %34
  ret void
}

declare dso_local i32 @stack_zero(%struct.stack*) #1

declare dso_local i32 @INKERNEL(i64) #1

declare dso_local i32 @stack_put(%struct.stack*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
