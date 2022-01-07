; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_lprint.c_demi_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_lprint.c_demi_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@demi_print.lenlast = internal global i32 0, align 4
@TAB_LEN = common dso_local global i32 0, align 4
@LINE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @demi_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demi_print(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strlen(i8* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %52

11:                                               ; preds = %2
  %12 = load i32, i32* @TAB_LEN, align 4
  %13 = mul nsw i32 5, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @demi_print.lenlast, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @demi_print.lenlast, align 4
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %17, %11
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @TAB_LEN, align 4
  %22 = sdiv i32 %20, %21
  %23 = add nsw i32 %22, 1
  %24 = load i32, i32* @TAB_LEN, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* @LINE_LEN, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %36, %30
  %32 = load i32, i32* @demi_print.lenlast, align 4
  %33 = load i32, i32* @TAB_LEN, align 4
  %34 = mul nsw i32 4, %33
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = call i32 @putchar(i8 signext 9)
  %38 = load i32, i32* @TAB_LEN, align 4
  %39 = load i32, i32* @demi_print.lenlast, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* @demi_print.lenlast, align 4
  br label %31

41:                                               ; preds = %31
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %42)
  br label %51

44:                                               ; preds = %19
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %44, %41
  br label %55

52:                                               ; preds = %2
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %52, %51
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* @demi_print.lenlast, align 4
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
