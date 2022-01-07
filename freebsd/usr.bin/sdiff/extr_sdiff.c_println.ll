; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sdiff/extr_sdiff.c_println.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sdiff/extr_sdiff.c_println.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@width = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c" (\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" %c\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" %c \00", align 1
@line_width = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8, i8*)* @println to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @println(i8* %0, i8 signext %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* @width, align 8
  %13 = call i32 @printcol(i8* %11, i64* %7, i64 %12)
  br label %14

14:                                               ; preds = %10, %3
  br label %15

15:                                               ; preds = %21, %14
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @width, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = call i32 @putchar(i8 signext 32)
  br label %21

21:                                               ; preds = %19
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %7, align 8
  br label %15

24:                                               ; preds = %15
  %25 = load i8, i8* %5, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %50

33:                                               ; preds = %28, %24
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i8, i8* %5, align 1
  %38 = sext i8 %37 to i32
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %50

40:                                               ; preds = %33
  %41 = load i8, i8* %5, align 1
  %42 = sext i8 %41 to i32
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, 3
  store i64 %45, i64* %7, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* @line_width, align 8
  %48 = call i32 @printcol(i8* %46, i64* %7, i64 %47)
  %49 = call i32 @putchar(i8 signext 10)
  br label %50

50:                                               ; preds = %40, %36, %31
  ret void
}

declare dso_local i32 @printcol(i8*, i64*, i64) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
