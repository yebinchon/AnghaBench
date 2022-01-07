; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pull.c_config_get_ff.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pull.c_config_get_ff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"pull.ff\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"--no-ff\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"--ff\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"only\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"--ff-only\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Invalid value for pull.ff: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @config_get_ff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @config_get_ff() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = call i64 @git_config_get_value(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i8* null, i8** %1, align 8
  br label %20

6:                                                ; preds = %0
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @git_parse_maybe_bool(i8* %7)
  switch i32 %8, label %11 [
    i32 0, label %9
    i32 1, label %10
  ]

9:                                                ; preds = %6
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %20

10:                                               ; preds = %6
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %20

11:                                               ; preds = %6
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %20

16:                                               ; preds = %11
  %17 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @die(i32 %17, i8* %18)
  br label %20

20:                                               ; preds = %16, %15, %10, %9, %5
  %21 = load i8*, i8** %1, align 8
  ret i8* %21
}

declare dso_local i64 @git_config_get_value(i8*, i8**) #1

declare dso_local i32 @git_parse_maybe_bool(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
