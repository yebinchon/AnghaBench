; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stack.c_stack_sbuf_print_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stack.c_stack_sbuf_print_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.stack = type { i32, i64* }

@STACK_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"bogus stack\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"#%d %p at %s+%#lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stack_sbuf_print_flags(%struct.sbuf* %0, %struct.stack* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbuf*, align 8
  %6 = alloca %struct.stack*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %5, align 8
  store %struct.stack* %1, %struct.stack** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.stack*, %struct.stack** %6, align 8
  %13 = getelementptr inbounds %struct.stack, %struct.stack* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @STACK_MAX, align 4
  %16 = icmp sle i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %55, %3
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.stack*, %struct.stack** %6, align 8
  %22 = getelementptr inbounds %struct.stack, %struct.stack* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %19
  %26 = load %struct.stack*, %struct.stack** %6, align 8
  %27 = getelementptr inbounds %struct.stack, %struct.stack* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @stack_symbol(i64 %32, i8* %33, i32 64, i64* %9, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @EWOULDBLOCK, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %4, align 4
  br label %59

41:                                               ; preds = %25
  %42 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.stack*, %struct.stack** %6, align 8
  %45 = getelementptr inbounds %struct.stack, %struct.stack* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @sbuf_printf(%struct.sbuf* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %43, i8* %51, i8* %52, i64 %53)
  br label %55

55:                                               ; preds = %41
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %19

58:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %39
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @stack_symbol(i64, i8*, i32, i64*, i32) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
