; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_sort.c_check_mutually_exclusive_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_sort.c_check_mutually_exclusive_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUMBER_OF_MUTUALLY_EXCLUSIVE_FLAGS = common dso_local global i32 0, align 4
@mutually_exclusive_flags = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"%c:%c: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i32*)* @check_mutually_exclusive_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_mutually_exclusive_flags(i8 signext %0, i32* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %60, %2
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @NUMBER_OF_MUTUALLY_EXCLUSIVE_FLAGS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %63

14:                                               ; preds = %10
  %15 = load i32*, i32** @mutually_exclusive_flags, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i8, i8* %3, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %14
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i8, i8* %3, align 1
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @getstr(i32 1)
  %38 = call i32 @errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8 signext %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %31
  store i32 1, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %24
  br label %59

42:                                               ; preds = %14
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i8, i8* %3, align 1
  %47 = load i32*, i32** @mutually_exclusive_flags, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @getstr(i32 1)
  %53 = call i32 @errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8 signext %46, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %45, %42
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 1, i32* %58, align 4
  store i32 1, i32* %8, align 4
  br label %59

59:                                               ; preds = %54, %41
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %10

63:                                               ; preds = %10
  ret void
}

declare dso_local i32 @errx(i32, i8*, i8 signext, i32, i32) #1

declare dso_local i32 @getstr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
