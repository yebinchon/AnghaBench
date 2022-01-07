; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_iostat.c_cmdiostat.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_iostat.c_cmdiostat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"kbpt\00", align 1
@kbpt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"numbers\00", align 1
@numbers = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"bars\00", align 1
@cur_dev = common dso_local global i32 0, align 4
@wnd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmdiostat(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @prefix(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* @kbpt, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* @kbpt, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @prefix(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 1, i32* @numbers, align 4
  br label %32

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @prefix(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* @numbers, align 4
  br label %31

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @dscmd(i8* %25, i8* %26, i32 100, i32* @cur_dev)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %38

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %23
  br label %32

32:                                               ; preds = %31, %18
  br label %33

33:                                               ; preds = %32, %9
  %34 = load i32, i32* @wnd, align 4
  %35 = call i32 @wclear(i32 %34)
  %36 = call i32 (...) @labeliostat()
  %37 = call i32 (...) @refresh()
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @prefix(i8*, i8*) #1

declare dso_local i32 @dscmd(i8*, i8*, i32, i32*) #1

declare dso_local i32 @wclear(i32) #1

declare dso_local i32 @labeliostat(...) #1

declare dso_local i32 @refresh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
