; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_stash.c_assert_stash_like.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_stash.c_assert_stash_like.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stash_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s^1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s^1:\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s^2:\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"'%s' is not a stash-like commit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stash_info*, i8*)* @assert_stash_like to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_stash_like(%struct.stash_info* %0, i8* %1) #0 {
  %3 = alloca %struct.stash_info*, align 8
  %4 = alloca i8*, align 8
  store %struct.stash_info* %0, %struct.stash_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.stash_info*, %struct.stash_info** %3, align 8
  %6 = getelementptr inbounds %struct.stash_info, %struct.stash_info* %5, i32 0, i32 3
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @get_oidf(i32* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  %11 = load %struct.stash_info*, %struct.stash_info** %3, align 8
  %12 = getelementptr inbounds %struct.stash_info, %struct.stash_info* %11, i32 0, i32 2
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @get_oidf(i32* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %10
  %17 = load %struct.stash_info*, %struct.stash_info** %3, align 8
  %18 = getelementptr inbounds %struct.stash_info, %struct.stash_info* %17, i32 0, i32 1
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @get_oidf(i32* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.stash_info*, %struct.stash_info** %3, align 8
  %24 = getelementptr inbounds %struct.stash_info, %struct.stash_info* %23, i32 0, i32 0
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @get_oidf(i32* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22, %16, %10, %2
  %29 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @die(i32 %29, i8* %30)
  br label %32

32:                                               ; preds = %28, %22
  ret void
}

declare dso_local i64 @get_oidf(i32*, i8*, i8*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
