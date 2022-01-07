; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_main.c_nlisterr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_main.c_nlisterr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlist = type { i8*, i64 }

@.str = private unnamed_addr constant [45 x i8] c"systat: nlist: can't find following symbols:\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CMDLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlisterr(%struct.nlist* %0) #0 {
  %2 = alloca %struct.nlist*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nlist* %0, %struct.nlist** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 (...) @clear()
  %6 = call i32 (i32, i32, i8*, ...) @mvprintw(i32 2, i32 10, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %47, %1
  %8 = load %struct.nlist*, %struct.nlist** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.nlist, %struct.nlist* %8, i64 %10
  %12 = getelementptr inbounds %struct.nlist, %struct.nlist* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %7
  %16 = load %struct.nlist*, %struct.nlist** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.nlist, %struct.nlist* %16, i64 %18
  %20 = getelementptr inbounds %struct.nlist, %struct.nlist* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %15, %7
  %26 = phi i1 [ false, %7 ], [ %24, %15 ]
  br i1 %26, label %27, label %50

27:                                               ; preds = %25
  %28 = load %struct.nlist*, %struct.nlist** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.nlist, %struct.nlist* %28, i64 %30
  %32 = getelementptr inbounds %struct.nlist, %struct.nlist* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  %38 = add nsw i32 2, %37
  %39 = load %struct.nlist*, %struct.nlist** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.nlist, %struct.nlist* %39, i64 %41
  %43 = getelementptr inbounds %struct.nlist, %struct.nlist* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i32, i32, i8*, ...) @mvprintw(i32 %38, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %35, %27
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %7

50:                                               ; preds = %25
  %51 = load i32, i32* @CMDLINE, align 4
  %52 = call i32 @move(i32 %51, i32 0)
  %53 = call i32 (...) @clrtoeol()
  %54 = call i32 (...) @refresh()
  %55 = call i32 (...) @endwin()
  %56 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @clear(...) #1

declare dso_local i32 @mvprintw(i32, i32, i8*, ...) #1

declare dso_local i32 @move(i32, i32) #1

declare dso_local i32 @clrtoeol(...) #1

declare dso_local i32 @refresh(...) #1

declare dso_local i32 @endwin(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
