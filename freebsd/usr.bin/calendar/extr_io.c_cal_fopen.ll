; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_io.c_cal_fopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_io.c_cal_fopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Cannot get home directory\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Cannot enter home directory\00", align 1
@calendarHomes = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"can't open calendar file \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @cal_fopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cal_fopen(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %1
  %16 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %51

17:                                               ; preds = %10
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @chdir(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %51

23:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %45, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i8**, i8*** @calendarHomes, align 8
  %27 = call i32 @nitems(i8** %26)
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load i8**, i8*** @calendarHomes, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @chdir(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %45

38:                                               ; preds = %29
  %39 = load i8*, i8** %3, align 8
  %40 = call i32* @fopen(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %40, i32** %4, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32*, i32** %4, align 8
  store i32* %43, i32** %2, align 8
  br label %51

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i32, i32* %6, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %24

48:                                               ; preds = %24
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  store i32* null, i32** %2, align 8
  br label %51

51:                                               ; preds = %48, %42, %21, %15
  %52 = load i32*, i32** %2, align 8
  ret i32* %52
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @nitems(i8**) #1

declare dso_local i32* @fopen(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
