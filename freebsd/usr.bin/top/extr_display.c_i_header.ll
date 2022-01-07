; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_i_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_i_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@header_status = common dso_local global i64 0, align 8
@ON = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@lastline = common dso_local global i32 0, align 4
@ERASE = common dso_local global i64 0, align 8
@OFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i_header(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i8* @trim_header(i8* %4)
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %2, align 8
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i64, i64* @header_status, align 8
  %12 = load i64, i64* @ON, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = call i32 @putchar(i8 signext 10)
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 @fputs(i8* %16, i32 %17)
  %19 = load i32, i32* @lastline, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @lastline, align 4
  br label %28

21:                                               ; preds = %10
  %22 = load i64, i64* @header_status, align 8
  %23 = load i64, i64* @ERASE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64, i64* @OFF, align 8
  store i64 %26, i64* @header_status, align 8
  br label %27

27:                                               ; preds = %25, %21
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @free(i8* %29)
  ret void
}

declare dso_local i8* @trim_header(i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
