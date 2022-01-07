; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/lex/extr_initparse.c_build_eof_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/lex/extr_initparse.c_build_eof_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXLINE = common dso_local global i32 0, align 4
@scon_stk_ptr = common dso_local global i32 0, align 4
@sceof = common dso_local global i32* null, align 8
@scon_stk = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"multiple <<EOF>> rules for start condition %s\00", align 1
@scname = common dso_local global i8** null, align 8
@previous_continued_action = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"YY_RULE_SETUP\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"case YY_STATE_EOF(%s):\0A\00", align 1
@num_rules = common dso_local global i32 0, align 4
@num_eof_rules = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @build_eof_action() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @MAXLINE, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %2, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %3, align 8
  store i32 1, i32* %1, align 4
  br label %8

8:                                                ; preds = %57, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @scon_stk_ptr, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %60

12:                                               ; preds = %8
  %13 = load i32*, i32** @sceof, align 8
  %14 = load i64*, i64** @scon_stk, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %13, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %12
  %23 = load i8**, i8*** @scname, align 8
  %24 = load i64*, i64** @scon_stk, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i8*, i8** %23, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @format_pinpoint_message(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %56

32:                                               ; preds = %12
  %33 = load i32*, i32** @sceof, align 8
  %34 = load i64*, i64** @scon_stk, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  store i32 1, i32* %39, align 4
  %40 = load i64, i64* @previous_continued_action, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = call i32 @add_action(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %32
  %45 = trunc i64 %5 to i32
  %46 = load i8**, i8*** @scname, align 8
  %47 = load i64*, i64** @scon_stk, align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i8*, i8** %46, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @snprintf(i8* %7, i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = call i32 @add_action(i8* %7)
  br label %56

56:                                               ; preds = %44, %22
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %1, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %1, align 4
  br label %8

60:                                               ; preds = %8
  %61 = call i32 @line_directive_out(i32* null, i32 1)
  %62 = load i32, i32* @num_rules, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* @num_rules, align 4
  %64 = load i32, i32* @num_eof_rules, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @num_eof_rules, align 4
  %66 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %66)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @format_pinpoint_message(i8*, i8*) #2

declare dso_local i32 @add_action(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @line_directive_out(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
