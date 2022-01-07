; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/uuencode/extr_uuencode.c_base64_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/uuencode/extr_uuencode.c_base64_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@raw = common dso_local global i32 0, align 4
@output = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"begin-base64 %o %s\0A\00", align 1
@mode = common dso_local global i32 0, align 4
@av = common dso_local global i8** null, align 8
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"b64_ntop: error encoding base64\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"====\0A\00", align 1
@GROUPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @base64_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @base64_encode() #0 {
  %1 = alloca [3 x i8], align 1
  %2 = alloca [7 x i8], align 1
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @raw, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @output, align 4
  %10 = load i32, i32* @mode, align 4
  %11 = load i8**, i8*** @av, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %10, i8* %12)
  br label %14

14:                                               ; preds = %8, %0
  br label %15

15:                                               ; preds = %33, %14
  %16 = getelementptr inbounds [3 x i8], [3 x i8]* %1, i64 0, i64 0
  %17 = load i32, i32* @stdin, align 4
  %18 = call i64 @fread(i8* %16, i32 1, i32 3, i32 %17)
  store i64 %18, i64* %3, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  %23 = getelementptr inbounds [3 x i8], [3 x i8]* %1, i64 0, i64 0
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %26 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %27 = call i32 @nitems(i8* %26)
  %28 = call i32 @b64_ntop(i8* %23, i64 %24, i8* %25, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %20
  %34 = load i32, i32* @output, align 4
  %35 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %36 = load i32, i32* %5, align 4
  %37 = srem i32 %36, 19
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %35, i8* %40)
  br label %15

42:                                               ; preds = %15
  %43 = load i32, i32* %5, align 4
  %44 = srem i32 %43, 19
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @output, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i32, i32* @raw, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @output, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %49
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @fread(i8*, i32, i32, i32) #1

declare dso_local i32 @b64_ntop(i8*, i64, i8*, i32) #1

declare dso_local i32 @nitems(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
