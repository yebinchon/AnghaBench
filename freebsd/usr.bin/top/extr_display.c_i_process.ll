; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_i_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_i_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lastline = common dso_local global i64 0, align 8
@y_procs = common dso_local global i64 0, align 8
@screen_width = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@smart_terminal = common dso_local global i64 0, align 8
@screenbuf = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i_process(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  br label %8

8:                                                ; preds = %15, %2
  %9 = load i64, i64* @lastline, align 8
  %10 = load i64, i64* @y_procs, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = icmp slt i64 %9, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = call i32 @putchar(i8 signext 10)
  %17 = load i64, i64* @lastline, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* @lastline, align 8
  br label %8

19:                                               ; preds = %8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @screen_width, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* @screen_width, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8 0, i8* %29, align 1
  br label %30

30:                                               ; preds = %25, %19
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* @stdout, align 4
  %33 = call i32 @fputs(i8* %31, i32 %32)
  %34 = load i64, i64* @smart_terminal, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i8*, i8** @screenbuf, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @lineindex(i32 %38)
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  br label %44

42:                                               ; preds = %30
  %43 = load i8*, i8** @screenbuf, align 8
  br label %44

44:                                               ; preds = %42, %36
  %45 = phi i8* [ %41, %36 ], [ %43, %42 ]
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i8* @stpcpy(i8* %46, i8* %47)
  store i8* %48, i8** %5, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = load i32, i32* @screen_width, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %44
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* @screen_width, align 4
  %60 = sext i32 %59 to i64
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = sub nsw i64 %60, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memset(i8* %58, i32 0, i32 %67)
  br label %69

69:                                               ; preds = %57, %44
  ret void
}

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @lineindex(i32) #1

declare dso_local i8* @stpcpy(i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
