; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_swap.c_labelswap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_swap.c_labelswap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@wnd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%*s%*s%*s %s\00", align 1
@dlen = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Disk\00", align 1
@hlen = common dso_local global i32 0, align 4
@header = common dso_local global i32 0, align 4
@ulen = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Used\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"/0%  /10  /20  /30  /40  /50  /60  /70  /80  /90  /100\00", align 1
@kvnsw = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"Total\00", align 1
@kvmsw = common dso_local global %struct.TYPE_2__* null, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @labelswap() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @fetchswap()
  %4 = load i32, i32* @wnd, align 4
  %5 = call i32 @werase(i32 %4)
  %6 = load i32, i32* @wnd, align 4
  %7 = load i32, i32* @dlen, align 4
  %8 = sub nsw i32 0, %7
  %9 = load i32, i32* @hlen, align 4
  %10 = load i32, i32* @header, align 4
  %11 = load i32, i32* @ulen, align 4
  %12 = call i32 (i32, i32, i32, i8*, i32, i8*, ...) @mvwprintw(i32 %6, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 %10, i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %41, %0
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @kvnsw, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @kvnsw, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* @kvnsw, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %44

25:                                               ; preds = %21
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %33

26:                                               ; preds = %17
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvmsw, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %1, align 8
  br label %33

33:                                               ; preds = %26, %25
  %34 = load i32, i32* @wnd, align 4
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* @dlen, align 4
  %38 = sub nsw i32 0, %37
  %39 = load i8*, i8** %1, align 8
  %40 = call i32 (i32, i32, i32, i8*, i32, i8*, ...) @mvwprintw(i32 %34, i32 %36, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %38, i8* %39)
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %13

44:                                               ; preds = %24, %13
  %45 = call i32 @dslabel(i32 12, i32 0, i32 18)
  ret void
}

declare dso_local i32 @fetchswap(...) #1

declare dso_local i32 @werase(i32) #1

declare dso_local i32 @mvwprintw(i32, i32, i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @dslabel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
