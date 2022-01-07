; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stack.c_stack_print_short.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stack.c_stack_print_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack = type { i32, i64* }

@STACK_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"bogus stack\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%s+%#lx\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stack_print_short(%struct.stack* %0) #0 {
  %2 = alloca %struct.stack*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.stack* %0, %struct.stack** %2, align 8
  %6 = load %struct.stack*, %struct.stack** %2, align 8
  %7 = getelementptr inbounds %struct.stack, %struct.stack* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @STACK_MAX, align 4
  %10 = icmp sle i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %51, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.stack*, %struct.stack** %2, align 8
  %16 = getelementptr inbounds %struct.stack, %struct.stack* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19
  %25 = load %struct.stack*, %struct.stack** %2, align 8
  %26 = getelementptr inbounds %struct.stack, %struct.stack* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %33 = load i32, i32* @M_WAITOK, align 4
  %34 = call i64 @stack_symbol(i64 %31, i8* %32, i32 64, i64* %4, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %38 = load i64, i64* %4, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %37, i64 %38)
  br label %50

40:                                               ; preds = %24
  %41 = load %struct.stack*, %struct.stack** %2, align 8
  %42 = getelementptr inbounds %struct.stack, %struct.stack* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %40, %36
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %13

54:                                               ; preds = %13
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @stack_symbol(i64, i8*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
