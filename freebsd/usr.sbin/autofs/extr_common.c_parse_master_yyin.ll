; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_parse_master_yyin.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_parse_master_yyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32 }

@lineno = common dso_local global i64 0, align 8
@NEWLINE = common dso_local global i32 0, align 4
@yytext = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"too many arguments at %s, line %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.node*, i8*)* @parse_master_yyin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_master_yyin(%struct.node* %0, i8* %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i64 0, i64* @lineno, align 8
  br label %9

9:                                                ; preds = %58, %32, %2
  %10 = call i32 (...) @yylex()
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @NEWLINE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %13, %9
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.node*, %struct.node** %3, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i64, i64* @lineno, align 8
  %27 = call i32 @node_new_map(%struct.node* %21, i8* %22, i8* %23, i8* %24, i8* %25, i64 %26)
  br label %28

28:                                               ; preds = %20, %17
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %59

32:                                               ; preds = %28
  store i8* null, i8** %7, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %5, align 8
  br label %9

33:                                               ; preds = %13
  %34 = load i8*, i8** %5, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i64, i64* @yytext, align 8
  %38 = call i8* @checked_strdup(i64 %37)
  store i8* %38, i8** %5, align 8
  br label %58

39:                                               ; preds = %33
  %40 = load i8*, i8** %6, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, i64* @yytext, align 8
  %44 = call i8* @checked_strdup(i64 %43)
  store i8* %44, i8** %6, align 8
  br label %57

45:                                               ; preds = %39
  %46 = load i8*, i8** %7, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i64, i64* @yytext, align 8
  %50 = add nsw i64 %49, 1
  %51 = call i8* @checked_strdup(i64 %50)
  store i8* %51, i8** %7, align 8
  br label %56

52:                                               ; preds = %45
  %53 = load i8*, i8** %4, align 8
  %54 = load i64, i64* @lineno, align 8
  %55 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %53, i64 %54)
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %42
  br label %58

58:                                               ; preds = %57, %36
  br label %9

59:                                               ; preds = %31
  ret void
}

declare dso_local i32 @yylex(...) #1

declare dso_local i32 @node_new_map(%struct.node*, i8*, i8*, i8*, i8*, i64) #1

declare dso_local i8* @checked_strdup(i64) #1

declare dso_local i32 @log_errx(i32, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
