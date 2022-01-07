; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_time.c_check_time_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_time.c_check_time_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32**, i32**, i32**, i32** }

@last_kw = common dso_local global i32 0, align 4
@tm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"unknown list\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"too few items in list (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_time_list() #0 {
  %1 = load i32, i32* @last_kw, align 4
  switch i32 %1, label %36 [
    i32 133, label %2
    i32 128, label %9
    i32 134, label %16
    i32 130, label %23
    i32 131, label %30
    i32 129, label %35
    i32 132, label %35
  ]

2:                                                ; preds = %0
  %3 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 4), align 8
  %4 = getelementptr inbounds i32*, i32** %3, i64 11
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %43

8:                                                ; preds = %2
  br label %39

9:                                                ; preds = %0
  %10 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 3), align 8
  %11 = getelementptr inbounds i32*, i32** %10, i64 11
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %43

15:                                               ; preds = %9
  br label %39

16:                                               ; preds = %0
  %17 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 2), align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 6
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %43

22:                                               ; preds = %16
  br label %39

23:                                               ; preds = %0
  %24 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 1), align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 6
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %43

29:                                               ; preds = %23
  br label %39

30:                                               ; preds = %0
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 0), align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %43

34:                                               ; preds = %30
  br label %39

35:                                               ; preds = %0, %0
  br label %43

36:                                               ; preds = %0
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %34, %29, %22, %15, %8
  %40 = load i32, i32* @stderr, align 4
  %41 = load i32, i32* @last_kw, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %35, %33, %28, %21, %14, %7
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
