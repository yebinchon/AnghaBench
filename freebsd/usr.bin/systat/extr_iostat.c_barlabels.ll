; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_iostat.c_barlabels.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_iostat.c_barlabels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i64 }

@wnd = common dso_local global i32 0, align 4
@INSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"/0%  /10  /20  /30  /40  /50  /60  /70  /80  /90  /100\00", align 1
@kbpt = common dso_local global i32 0, align 4
@linesperregion = common dso_local global i32 0, align 4
@num_devices = common dso_local global i32 0, align 4
@dev_select = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%-5.5s MB/s|\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"      tps|\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"     KB/t|\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @barlabels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @barlabels(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [10 x i8], align 1
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @wnd, align 4
  %6 = load i32, i32* %2, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* @INSET, align 4
  %9 = call i32 @mvwaddstr(i32 %5, i32 %6, i32 %8, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @kbpt, align 4
  %11 = add nsw i32 2, %10
  store i32 %11, i32* @linesperregion, align 4
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %66, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @num_devices, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %69

16:                                               ; preds = %12
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_select, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %16
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @wnd, align 4
  %27 = call i32 @getmaxy(i32 %26)
  %28 = sub nsw i32 %27, 1
  %29 = load i32, i32* @linesperregion, align 4
  %30 = sub nsw i32 %28, %29
  %31 = icmp sgt i32 %25, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %69

33:                                               ; preds = %24
  %34 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_select, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_select, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %46)
  %48 = load i32, i32* @wnd, align 4
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %2, align 4
  %51 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %52 = call i32 @mvwprintw(i32 %48, i32 %49, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @wnd, align 4
  %54 = load i32, i32* %2, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %2, align 4
  %56 = call i32 @mvwaddstr(i32 %53, i32 %54, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @kbpt, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %33
  %60 = load i32, i32* @wnd, align 4
  %61 = load i32, i32* %2, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %2, align 4
  %63 = call i32 @mvwaddstr(i32 %60, i32 %61, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %59, %33
  br label %65

65:                                               ; preds = %64, %16
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %12

69:                                               ; preds = %32, %12
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @mvwaddstr(i32, i32, i32, i8*) #1

declare dso_local i32 @getmaxy(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @mvwprintw(i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
