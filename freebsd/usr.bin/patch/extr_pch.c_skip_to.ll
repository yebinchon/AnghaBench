; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_skip_to.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_skip_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_base = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Internal error: seek %lld>%lld\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@pfp = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"The text leading up to this was:\0A--------------------------\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Unexpected end of file\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"|%s\00", align 1
@buf = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"--------------------------\0A\00", align 1
@p_input_line = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @skip_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip_to(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* @p_base, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i64, i64* @p_base, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %10, i64 %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i64, i64* @verbose, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %13
  %17 = load i64, i64* @p_base, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load i32, i32* @pfp, align 4
  %22 = load i64, i64* @p_base, align 8
  %23 = load i32, i32* @SEEK_SET, align 4
  %24 = call i32 @fseeko(i32 %21, i64 %22, i32 %23)
  %25 = call i32 (i8*, ...) @say(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %37, %20
  %27 = load i32, i32* @pfp, align 4
  %28 = call i64 @ftello(i32 %27)
  %29 = load i64, i64* %3, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = call i64 @pgets(i32 0)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i32, i32* @buf, align 4
  %39 = call i32 (i8*, ...) @say(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  br label %26

40:                                               ; preds = %26
  %41 = call i32 (i8*, ...) @say(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %47

42:                                               ; preds = %16, %13
  %43 = load i32, i32* @pfp, align 4
  %44 = load i64, i64* %3, align 8
  %45 = load i32, i32* @SEEK_SET, align 4
  %46 = call i32 @fseeko(i32 %43, i64 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %40
  %48 = load i64, i64* %4, align 8
  %49 = sub nsw i64 %48, 1
  store i64 %49, i64* @p_input_line, align 8
  ret void
}

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32 @fseeko(i32, i64, i32) #1

declare dso_local i32 @say(i8*, ...) #1

declare dso_local i64 @ftello(i32) #1

declare dso_local i64 @pgets(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
