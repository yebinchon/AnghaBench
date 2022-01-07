; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_add.c_refresh.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_add.c_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathspec = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@the_index = common dso_local global i32 0, align 4
@REFRESH_IN_PORCELAIN = common dso_local global i32 0, align 4
@REFRESH_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unstaged changes after refreshing the index:\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"pathspec '%s' did not match any files\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pathspec*)* @refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refresh(i32 %0, %struct.pathspec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pathspec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.pathspec* %1, %struct.pathspec** %4, align 8
  %7 = load %struct.pathspec*, %struct.pathspec** %4, align 8
  %8 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i8* @xcalloc(i32 %9, i32 1)
  store i8* %10, i8** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @REFRESH_IN_PORCELAIN, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @REFRESH_QUIET, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = load %struct.pathspec*, %struct.pathspec** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @refresh_index(i32* @the_index, i32 %18, %struct.pathspec* %19, i8* %20, i32 %21)
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %48, %17
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.pathspec*, %struct.pathspec** %4, align 8
  %26 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %29
  %37 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.pathspec*, %struct.pathspec** %4, align 8
  %39 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @die(i32 %37, i32 %45)
  br label %47

47:                                               ; preds = %36, %29
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %23

51:                                               ; preds = %23
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @free(i8* %52)
  ret void
}

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i32 @refresh_index(i32*, i32, %struct.pathspec*, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
