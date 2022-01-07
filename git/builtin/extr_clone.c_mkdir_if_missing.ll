; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_clone.c_mkdir_if_missing.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_clone.c_mkdir_if_missing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"failed to create directory '%s'\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"failed to stat '%s'\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"%s exists and is not a directory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @mkdir_if_missing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mkdir_if_missing(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @mkdir(i8* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %38

11:                                               ; preds = %2
  %12 = load i64, i64* @errno, align 8
  %13 = load i64, i64* @EEXIST, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @die_errno(i32 %16, i8* %17)
  br label %38

19:                                               ; preds = %11
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @stat(i8* %20, %struct.stat* %5)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @die_errno(i32 %24, i8* %25)
  br label %37

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @S_ISDIR(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @die(i32 %33, i8* %34)
  br label %36

36:                                               ; preds = %32, %27
  br label %37

37:                                               ; preds = %36, %23
  br label %38

38:                                               ; preds = %10, %37, %15
  ret void
}

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @die_errno(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @die(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
