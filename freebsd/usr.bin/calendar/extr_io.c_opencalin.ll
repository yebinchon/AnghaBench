; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_io.c_opencalin.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_io.c_opencalin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@calendarFile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@doall = common dso_local global i64 0, align 8
@calendarHomes = common dso_local global i32* null, align 8
@calendarNoMail = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @opencalin() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.stat, align 4
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @calendarFile, align 4
  %5 = call i32* @fopen(i32 %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %5, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %32

7:                                                ; preds = %0
  %8 = load i64, i64* @doall, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = load i32*, i32** @calendarHomes, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @chdir(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32* null, i32** %1, align 8
  br label %34

17:                                               ; preds = %10
  %18 = load i32, i32* @calendarNoMail, align 4
  %19 = call i64 @stat(i32 %18, %struct.stat* %2)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32* null, i32** %1, align 8
  br label %34

22:                                               ; preds = %17
  %23 = load i32, i32* @calendarFile, align 4
  %24 = call i32* @fopen(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %3, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32* null, i32** %1, align 8
  br label %34

27:                                               ; preds = %22
  br label %31

28:                                               ; preds = %7
  %29 = load i32, i32* @calendarFile, align 4
  %30 = call i32* @cal_fopen(i32 %29)
  store i32* %30, i32** %3, align 8
  br label %31

31:                                               ; preds = %28, %27
  br label %32

32:                                               ; preds = %31, %0
  %33 = load i32*, i32** %3, align 8
  store i32* %33, i32** %1, align 8
  br label %34

34:                                               ; preds = %32, %26, %21, %16
  %35 = load i32*, i32** %1, align 8
  ret i32* %35
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i64 @chdir(i32) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32* @cal_fopen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
