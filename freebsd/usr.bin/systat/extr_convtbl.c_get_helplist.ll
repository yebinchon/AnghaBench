; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_convtbl.c_get_helplist.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_convtbl.c_get_helplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@get_helplist.buf = internal global i8* null, align 8
@SC_AUTO = common dso_local global i32 0, align 4
@convtbl = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_helplist() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i8*, i8** @get_helplist.buf, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %58

6:                                                ; preds = %0
  store i64 0, i64* %3, align 8
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %22, %6
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @SC_AUTO, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @convtbl, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = add nsw i64 %18, 2
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* %3, align 8
  br label %22

22:                                               ; preds = %11
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load i64, i64* %3, align 8
  %27 = call i8* @malloc(i64 %26)
  store i8* %27, i8** @get_helplist.buf, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %56

29:                                               ; preds = %25
  %30 = load i8*, i8** @get_helplist.buf, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %31, align 1
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %52, %29
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @SC_AUTO, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load i8*, i8** @get_helplist.buf, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @convtbl, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcat(i8* %37, i8* %43)
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @SC_AUTO, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = load i8*, i8** @get_helplist.buf, align 8
  %50 = call i32 @strcat(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %36
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %2, align 4
  br label %32

55:                                               ; preds = %32
  br label %57

56:                                               ; preds = %25
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %60

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %57, %0
  %59 = load i8*, i8** @get_helplist.buf, align 8
  store i8* %59, i8** %1, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = load i8*, i8** %1, align 8
  ret i8* %61
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
