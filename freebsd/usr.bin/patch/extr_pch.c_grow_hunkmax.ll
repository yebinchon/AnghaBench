; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_grow_hunkmax.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_grow_hunkmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hunkmax = common dso_local global i32 0, align 4
@p_line = common dso_local global i32* null, align 8
@p_len = common dso_local global i32* null, align 8
@p_char = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"Internal memory allocation error\0A\00", align 1
@using_plan_a = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@out_of_mem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @grow_hunkmax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grow_hunkmax() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @hunkmax, align 4
  %3 = mul nsw i32 %2, 2
  store i32 %3, i32* %1, align 4
  %4 = load i32*, i32** @p_line, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %0
  %7 = load i32*, i32** @p_len, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i32*, i32** @p_char, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %6, %0
  %13 = call i32 @fatal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %9
  %15 = load i32*, i32** @p_line, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = call i32* @reallocf(i32* %15, i32 %19)
  store i32* %20, i32** @p_line, align 8
  %21 = load i32*, i32** @p_len, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 2
  %25 = trunc i64 %24 to i32
  %26 = call i32* @reallocf(i32* %21, i32 %25)
  store i32* %26, i32** @p_len, align 8
  %27 = load i32*, i32** @p_char, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 1
  %31 = trunc i64 %30 to i32
  %32 = call i32* @reallocf(i32* %27, i32 %31)
  store i32* %32, i32** @p_char, align 8
  %33 = load i32*, i32** @p_line, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %14
  %36 = load i32*, i32** @p_len, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32*, i32** @p_char, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %1, align 4
  store i32 %42, i32* @hunkmax, align 4
  br label %49

43:                                               ; preds = %38, %35, %14
  %44 = load i32, i32* @using_plan_a, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = call i32 @fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %43
  store i32 1, i32* @out_of_mem, align 4
  br label %49

49:                                               ; preds = %48, %41
  ret void
}

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32* @reallocf(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
