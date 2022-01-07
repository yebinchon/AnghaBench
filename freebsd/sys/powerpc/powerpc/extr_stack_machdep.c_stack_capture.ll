; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_stack_machdep.c_stack_capture.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_stack_machdep.c_stack_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@CALLOFFSET = common dso_local global i64 0, align 8
@trapexit = common dso_local global i32 0, align 4
@asttrapexit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stack*, i64)* @stack_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stack_capture(%struct.stack* %0, i64 %1) #0 {
  %3 = alloca %struct.stack*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.stack* %0, %struct.stack** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.stack*, %struct.stack** %3, align 8
  %7 = call i32 @stack_zero(%struct.stack* %6)
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @PAGE_SIZE, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %52

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %51
  %14 = load i64, i64* %4, align 8
  %15 = inttoptr i64 %14 to i64*
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %52

21:                                               ; preds = %13
  %22 = load i64, i64* %4, align 8
  %23 = add nsw i64 %22, 4
  %24 = inttoptr i64 %23 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, 4
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = and i64 %27, 3
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i64, i64* %5, align 8
  %32 = icmp slt i64 %31, 256
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %21
  br label %52

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @CALLOFFSET, align 8
  %37 = add nsw i64 %35, %36
  %38 = icmp eq i64 %37, ptrtoint (i32* @trapexit to i64)
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @CALLOFFSET, align 8
  %42 = add nsw i64 %40, %41
  %43 = icmp eq i64 %42, ptrtoint (i32* @asttrapexit to i64)
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %34
  br label %52

45:                                               ; preds = %39
  %46 = load %struct.stack*, %struct.stack** %3, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @stack_put(%struct.stack* %46, i64 %47)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %52

51:                                               ; preds = %45
  br label %13

52:                                               ; preds = %11, %50, %44, %33, %20
  ret void
}

declare dso_local i32 @stack_zero(%struct.stack*) #1

declare dso_local i32 @stack_put(%struct.stack*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
