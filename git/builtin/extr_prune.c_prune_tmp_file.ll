; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_prune.c_prune_tmp_file.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_prune.c_prune_tmp_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"Could not stat '%s'\00", align 1
@expire = common dso_local global i64 0, align 8
@show_only = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Removing stale temporary file %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @prune_tmp_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prune_tmp_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @lstat(i8* %5, %struct.stat* %4)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %9)
  store i32 %10, i32* %2, align 4
  br label %33

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @expire, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %33

17:                                               ; preds = %11
  %18 = load i64, i64* @show_only, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* @verbose, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %17
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i64, i64* @show_only, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @unlink_or_warn(i8* %30)
  br label %32

32:                                               ; preds = %29, %26
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %16, %8
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @unlink_or_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
