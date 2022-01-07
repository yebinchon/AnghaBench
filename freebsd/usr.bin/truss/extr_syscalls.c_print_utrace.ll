; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_syscalls.c_print_utrace.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_syscalls.c_print_utrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%zu:\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64)* @print_utrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_utrace(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 (i32*, i8*, ...) @fprintf(i32* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @sysdecode_utrace(i32* %10, i8* %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %37

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %7, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %21)
  br label %23

23:                                               ; preds = %27, %18
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, -1
  store i64 %25, i64* %6, align 8
  %26 = icmp ne i64 %24, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32*, i32** %4, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %7, align 8
  %31 = load i8, i8* %29, align 1
  %32 = zext i8 %31 to i32
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  br label %23

34:                                               ; preds = %23
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %15
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @sysdecode_utrace(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
