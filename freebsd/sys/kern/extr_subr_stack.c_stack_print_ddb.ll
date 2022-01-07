; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stack.c_stack_print_ddb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stack.c_stack_print_ddb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack = type { i32, i64* }

@STACK_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"bogus stack\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"#%d %p at %s+%#lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stack_print_ddb(%struct.stack* %0) #0 {
  %2 = alloca %struct.stack*, align 8
  %3 = alloca i8*, align 8
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

13:                                               ; preds = %40, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.stack*, %struct.stack** %2, align 8
  %16 = getelementptr inbounds %struct.stack, %struct.stack* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %13
  %20 = load %struct.stack*, %struct.stack** %2, align 8
  %21 = getelementptr inbounds %struct.stack, %struct.stack* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @stack_symbol_ddb(i64 %26, i8** %3, i64* %4)
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.stack*, %struct.stack** %2, align 8
  %30 = getelementptr inbounds %struct.stack, %struct.stack* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load i8*, i8** %3, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %28, i8* %36, i8* %37, i64 %38)
  br label %40

40:                                               ; preds = %19
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %13

43:                                               ; preds = %13
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @stack_symbol_ddb(i64, i8**, i64*) #1

declare dso_local i32 @printf(i8*, i32, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
