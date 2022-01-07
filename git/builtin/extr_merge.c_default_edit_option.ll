; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_default_edit_option.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_default_edit_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64 }

@default_edit_option.name = internal constant [19 x i8] c"GIT_MERGE_AUTOEDIT\00", align 16
@have_message = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Bad value '%s' in environment '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @default_edit_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @default_edit_option() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca i32, align 4
  %6 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @default_edit_option.name, i64 0, i64 0))
  store i8* %6, i8** %2, align 8
  %7 = load i64, i64* @have_message, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %57

10:                                               ; preds = %0
  %11 = load i8*, i8** %2, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @git_parse_maybe_bool(i8* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @die(i32 %19, i8* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @default_edit_option.name, i64 0, i64 0))
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %1, align 4
  br label %57

24:                                               ; preds = %10
  %25 = call i32 @fstat(i32 0, %struct.stat* %3)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %54, label %27

27:                                               ; preds = %24
  %28 = call i32 @fstat(i32 1, %struct.stat* %4)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %27
  %31 = call i64 @isatty(i32 0)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = call i64 @isatty(i32 1)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %38, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %50, %52
  br label %54

54:                                               ; preds = %48, %42, %36, %33, %30, %27, %24
  %55 = phi i1 [ false, %42 ], [ false, %36 ], [ false, %33 ], [ false, %30 ], [ false, %27 ], [ false, %24 ], [ %53, %48 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %1, align 4
  br label %57

57:                                               ; preds = %54, %22, %9
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @git_parse_maybe_bool(i8*) #1

declare dso_local i32 @die(i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @isatty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
